// ===== case423-OldAFKRuleResObject @ 016e59e4 =====
// existing function case423-OldAFKRuleResObject
016e59e4  sub sp,sp,#0x40
016e59e8  str x19,[sp, #0x20]
016e59ec  stp x29,x30,[sp, #0x30]
016e59f0  add x29,sp,#0x30
016e59f4  adrp x1,0x174a000
016e59f8  add x1,x1,#0x87c
016e59fc  mov x19,x0
016e5a00  bl 0x0124ba40
016e5a04  adrp x1,0x575d000
016e5a08  add x1,x1,#0xa06
016e5a0c  mov x0,x19
016e5a10  str x19,[sp]
016e5a14  bl 0x01251aa0
016e5a18  mov w8,#0x1
016e5a1c  str w8,[sp, #0x8]
016e5a20  mov x0,sp
016e5a24  bl 0x0174aa04
016e5a28  adrp x1,0x5766000
016e5a2c  adrp x3,0x736d000
016e5a30  add x1,x1,#0x5c4
016e5a34  add x3,x3,#0x101
016e5a38  add x0,sp,#0x10
016e5a3c  mov x2,sp
016e5a40  bl 0x0185efe8
016e5a44  adrp x1,0x5766000
016e5a48  adrp x2,0x185e000
016e5a4c  adrp x4,0x185e000
016e5a50  add x1,x1,#0x509
016e5a54  add x2,x2,#0xd90
016e5a58  add x4,x4,#0xd98
016e5a5c  add x0,sp,#0x10
016e5a60  mov x3,xzr
016e5a64  mov x5,xzr
016e5a68  bl 0x0185eba8
016e5a6c  adrp x1,0x5766000
016e5a70  adrp x2,0x185e000
016e5a74  adrp x4,0x185e000
016e5a78  add x1,x1,#0x519
016e5a7c  add x2,x2,#0xda0
016e5a80  add x4,x4,#0xda8
016e5a84  mov x3,xzr
016e5a88  mov x5,xzr
016e5a8c  bl 0x0185eba8
016e5a90  adrp x1,0x5766000
016e5a94  adrp x2,0x185e000
016e5a98  adrp x4,0x185e000
016e5a9c  add x1,x1,#0x5d8
016e5aa0  add x2,x2,#0xdb0
016e5aa4  add x4,x4,#0xdb8
016e5aa8  mov x3,xzr
016e5aac  mov x5,xzr
016e5ab0  bl 0x0185eba8
016e5ab4  adrp x1,0x5766000
016e5ab8  adrp x2,0x185e000
016e5abc  adrp x4,0x185e000
016e5ac0  add x1,x1,#0x5f2
016e5ac4  add x2,x2,#0xdc0
016e5ac8  add x4,x4,#0xdc8
016e5acc  mov x3,xzr
016e5ad0  mov x5,xzr
016e5ad4  bl 0x0185eba8
016e5ad8  adrp x1,0x5766000
016e5adc  adrp x2,0x185e000
016e5ae0  adrp x4,0x185e000
016e5ae4  add x1,x1,#0x60b
016e5ae8  add x2,x2,#0xdd0
016e5aec  add x4,x4,#0xdd8
016e5af0  mov x3,xzr
016e5af4  mov x5,xzr
016e5af8  bl 0x0185eba8
016e5afc  adrp x1,0x5766000
016e5b00  adrp x2,0x185e000
016e5b04  adrp x4,0x185e000
016e5b08  add x1,x1,#0x637
016e5b0c  add x2,x2,#0xde0
016e5b10  add x4,x4,#0xde8
016e5b14  mov x3,xzr
016e5b18  mov x5,xzr
016e5b1c  bl 0x0185eba8
016e5b20  adrp x1,0x5766000
016e5b24  adrp x2,0x185e000
016e5b28  adrp x4,0x185e000
016e5b2c  add x1,x1,#0x651
016e5b30  add x2,x2,#0xfd8
016e5b34  add x4,x4,#0xfe0
016e5b38  mov x3,xzr
016e5b3c  mov x5,xzr
016e5b40  bl 0x0185edf0
016e5b44  mov x19,x0
016e5b48  ldr w8,[x19, #0x8]
016e5b4c  ldr x0,[x19]
016e5b50  sub w8,w8,#0x3
016e5b54  str w8,[x19, #0x8]
016e5b58  orr w1,wzr,#0xfffffffc
016e5b5c  bl 0x0124c4d0
016e5b60  ldr w8,[x19, #0x8]
016e5b64  ldr x0,[x19]
016e5b68  str wzr,[x19, #0x8]
016e5b6c  cmp w8,#0x1
016e5b70  b.lt 0x016e5b7c
016e5b74  mvn w1,w8
016e5b78  bl 0x0124c4d0
016e5b7c  ldr w8,[sp, #0x18]
016e5b80  cmp w8,#0x1
016e5b84  b.lt 0x016e5b94
016e5b88  ldr x0,[sp, #0x10]
016e5b8c  mvn w1,w8
016e5b90  bl 0x0124c4d0
016e5b94  ldr w8,[sp, #0x8]
016e5b98  cmp w8,#0x1
016e5b9c  b.lt 0x016e5bac
016e5ba0  ldr x0,[sp]
016e5ba4  mvn w1,w8
016e5ba8  bl 0x0124c4d0
016e5bac  ldp x29,x30,[sp, #0x30]
016e5bb0  ldr x19,[sp, #0x20]
016e5bb4  add sp,sp,#0x40
016e5bb8  ret
