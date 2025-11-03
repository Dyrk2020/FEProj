// ===== case615-MonsterAnchorGroup @ 0170ae80 =====
// existing function case615-MonsterAnchorGroup
0170ae80  sub sp,sp,#0x50
0170ae84  str x21,[sp, #0x20]
0170ae88  stp x20,x19,[sp, #0x30]
0170ae8c  stp x29,x30,[sp, #0x40]
0170ae90  add x29,sp,#0x40
0170ae94  adrp x1,0x174a000
0170ae98  add x1,x1,#0x87c
0170ae9c  mov x19,x0
0170aea0  bl 0x0124ba40
0170aea4  adrp x1,0x575d000
0170aea8  add x1,x1,#0xa06
0170aeac  mov x0,x19
0170aeb0  str x19,[sp]
0170aeb4  bl 0x01251aa0
0170aeb8  mov w8,#0x1
0170aebc  str w8,[sp, #0x8]
0170aec0  mov x0,sp
0170aec4  bl 0x0174aa04
0170aec8  adrp x1,0x576a000
0170aecc  adrp x3,0x736d000
0170aed0  add x1,x1,#0x5ad
0170aed4  add x3,x3,#0x101
0170aed8  add x0,sp,#0x10
0170aedc  mov x2,sp
0170aee0  bl 0x018fc8d8
0170aee4  ldr x0,[sp, #0x10]
0170aee8  mov w1,#0x10
0170aeec  bl 0x0124cba0
0170aef0  adrp x8,0x18fc000
0170aef4  dup v0.2D,xzr
0170aef8  add x8,x8,#0x678
0170aefc  mov v0.D[0x0],x8
0170af00  str q0,[x0]
0170af04  ldr x0,[sp, #0x10]
0170af08  adrp x1,0x18fc000
0170af0c  add x1,x1,#0xc9c
0170af10  mov w2,#0x1
0170af14  bl 0x0124ec90
0170af18  ldr x0,[sp, #0x10]
0170af1c  mov w1,#0xffffffff
0170af20  bl 0x0124c0c0
0170af24  ldr x19,[sp, #0x10]
0170af28  orr w1,wzr,#0xfffffffb
0170af2c  mov w2,#0x6e7
0170af30  mov x0,x19
0170af34  bl 0x0124a650
0170af38  orr w1,wzr,#0xfffffffe
0170af3c  mov x0,x19
0170af40  bl 0x0124c0c0
0170af44  orr w1,wzr,#0xfffffffe
0170af48  mov x0,x19
0170af4c  bl 0x0124e920
0170af50  mov w20,w0
0170af54  adrp x1,0x576a000
0170af58  add x1,x1,#0x5c0
0170af5c  mov x0,x19
0170af60  bl 0x0124f120
0170af64  orr w1,wzr,#0xfffffffe
0170af68  mov w2,#0x1
0170af6c  mov x0,x19
0170af70  bl 0x0124cfc0
0170af74  mov x0,x19
0170af78  mov w1,w20
0170af7c  bl 0x0124e060
0170af80  orr w1,wzr,#0xfffffffd
0170af84  mov x0,x19
0170af88  bl 0x0124c4d0
0170af8c  ldr x19,[sp, #0x10]
0170af90  orr w1,wzr,#0xfffffffd
0170af94  mov w2,#0x6e7
0170af98  mov x0,x19
0170af9c  bl 0x0124a650
0170afa0  orr w1,wzr,#0xfffffffe
0170afa4  mov x0,x19
0170afa8  bl 0x0124c0c0
0170afac  orr w1,wzr,#0xfffffffe
0170afb0  mov x0,x19
0170afb4  bl 0x0124e920
0170afb8  mov w20,w0
0170afbc  adrp x1,0x576a000
0170afc0  add x1,x1,#0x5c0
0170afc4  mov x0,x19
0170afc8  bl 0x0124f120
0170afcc  orr w1,wzr,#0xfffffffe
0170afd0  mov w2,#0x1
0170afd4  mov x0,x19
0170afd8  bl 0x0124cfc0
0170afdc  mov x0,x19
0170afe0  mov w1,w20
0170afe4  bl 0x0124e060
0170afe8  orr w1,wzr,#0xfffffffd
0170afec  mov x0,x19
0170aff0  bl 0x0124c4d0
0170aff4  adrp x1,0x576a000
0170aff8  adrp x2,0x18fc000
0170affc  adrp x4,0x18fc000
0170b000  add x1,x1,#0x5cb
0170b004  add x2,x2,#0x868
0170b008  add x4,x4,#0x870
0170b00c  add x0,sp,#0x10
0170b010  mov x3,xzr
0170b014  mov x5,xzr
0170b018  bl 0x018fc680
0170b01c  mov x19,x0
0170b020  ldr x0,[x19]
0170b024  mov w1,#0x10
0170b028  bl 0x0124cba0
0170b02c  adrp x8,0x18fc000
0170b030  dup v0.2D,xzr
0170b034  add x8,x8,#0x8d0
0170b038  mov v0.D[0x0],x8
0170b03c  str q0,[x0]
0170b040  ldr x0,[x19]
0170b044  adrp x1,0x18fd000
0170b048  add x1,x1,#0x104
0170b04c  mov w2,#0x1
0170b050  bl 0x0124ec90
0170b054  ldr x0,[x19]
0170b058  mov w1,#0xffffffff
0170b05c  bl 0x0124c0c0
0170b060  ldr x20,[x19]
0170b064  orr w1,wzr,#0xfffffffb
0170b068  mov w2,#0x6e7
0170b06c  mov x0,x20
0170b070  bl 0x0124a650
0170b074  orr w1,wzr,#0xfffffffe
0170b078  mov x0,x20
0170b07c  bl 0x0124c0c0
0170b080  orr w1,wzr,#0xfffffffe
0170b084  mov x0,x20
0170b088  bl 0x0124e920
0170b08c  mov w21,w0
0170b090  adrp x1,0x576a000
0170b094  add x1,x1,#0x5db
0170b098  mov x0,x20
0170b09c  bl 0x0124f120
0170b0a0  orr w1,wzr,#0xfffffffe
0170b0a4  mov w2,#0x1
0170b0a8  mov x0,x20
0170b0ac  bl 0x0124cfc0
0170b0b0  mov x0,x20
0170b0b4  mov w1,w21
0170b0b8  bl 0x0124e060
0170b0bc  orr w1,wzr,#0xfffffffd
0170b0c0  mov x0,x20
0170b0c4  bl 0x0124c4d0
0170b0c8  ldr x20,[x19]
0170b0cc  orr w1,wzr,#0xfffffffd
0170b0d0  mov w2,#0x6e7
0170b0d4  mov x0,x20
0170b0d8  bl 0x0124a650
0170b0dc  orr w1,wzr,#0xfffffffe
0170b0e0  mov x0,x20
0170b0e4  bl 0x0124c0c0
0170b0e8  orr w1,wzr,#0xfffffffe
0170b0ec  mov x0,x20
0170b0f0  bl 0x0124e920
0170b0f4  mov w21,w0
0170b0f8  adrp x1,0x576a000
0170b0fc  add x1,x1,#0x5db
0170b100  mov x0,x20
0170b104  bl 0x0124f120
0170b108  orr w1,wzr,#0xfffffffe
0170b10c  mov w2,#0x1
0170b110  mov x0,x20
0170b114  bl 0x0124cfc0
0170b118  mov x0,x20
0170b11c  mov w1,w21
0170b120  bl 0x0124e060
0170b124  orr w1,wzr,#0xfffffffd
0170b128  mov x0,x20
0170b12c  bl 0x0124c4d0
0170b130  ldr w8,[x19, #0x8]
0170b134  ldr x0,[x19]
0170b138  sub w8,w8,#0x3
0170b13c  str w8,[x19, #0x8]
0170b140  orr w1,wzr,#0xfffffffc
0170b144  bl 0x0124c4d0
0170b148  ldr w8,[x19, #0x8]
0170b14c  ldr x0,[x19]
0170b150  str wzr,[x19, #0x8]
0170b154  cmp w8,#0x1
0170b158  b.lt 0x0170b164
0170b15c  mvn w1,w8
0170b160  bl 0x0124c4d0
0170b164  ldr w8,[sp, #0x18]
0170b168  cmp w8,#0x1
0170b16c  b.lt 0x0170b17c
0170b170  ldr x0,[sp, #0x10]
0170b174  mvn w1,w8
0170b178  bl 0x0124c4d0
0170b17c  ldr w8,[sp, #0x8]
0170b180  cmp w8,#0x1
0170b184  b.lt 0x0170b194
0170b188  ldr x0,[sp]
0170b18c  mvn w1,w8
0170b190  bl 0x0124c4d0
0170b194  ldp x29,x30,[sp, #0x40]
0170b198  ldp x20,x19,[sp, #0x30]
0170b19c  ldr x21,[sp, #0x20]
0170b1a0  add sp,sp,#0x50
0170b1a4  ret
