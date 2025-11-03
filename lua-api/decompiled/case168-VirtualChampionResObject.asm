// ===== case168-VirtualChampionResObject @ 016a97dc =====
// existing function case168-VirtualChampionResObject
016a97dc  sub sp,sp,#0x40
016a97e0  stp x20,x19,[sp, #0x20]
016a97e4  stp x29,x30,[sp, #0x30]
016a97e8  add x29,sp,#0x30
016a97ec  adrp x1,0x174a000
016a97f0  add x1,x1,#0x87c
016a97f4  mov x19,x0
016a97f8  bl 0x0124ba40
016a97fc  adrp x1,0x575d000
016a9800  add x1,x1,#0xa06
016a9804  mov x0,x19
016a9808  str x19,[sp]
016a980c  bl 0x01251aa0
016a9810  mov w8,#0x1
016a9814  str w8,[sp, #0x8]
016a9818  mov x0,sp
016a981c  bl 0x0174aa04
016a9820  adrp x1,0x5760000
016a9824  adrp x3,0x736d000
016a9828  add x1,x1,#0x5b9
016a982c  add x3,x3,#0x101
016a9830  add x0,sp,#0x10
016a9834  mov x2,sp
016a9838  bl 0x017ab1fc
016a983c  ldr x0,[sp, #0x10]
016a9840  mov w1,#0x10
016a9844  bl 0x0124cba0
016a9848  adrp x8,0x17ab000
016a984c  dup v0.2D,xzr
016a9850  add x8,x8,#0x1ec
016a9854  mov v0.D[0x0],x8
016a9858  str q0,[x0]
016a985c  ldr x0,[sp, #0x10]
016a9860  adrp x1,0x17ab000
016a9864  add x1,x1,#0x5c0
016a9868  mov w2,#0x1
016a986c  bl 0x0124ec90
016a9870  ldr x0,[sp, #0x10]
016a9874  mov w1,#0xffffffff
016a9878  bl 0x0124c0c0
016a987c  ldr x19,[sp, #0x10]
016a9880  orr w1,wzr,#0xfffffffb
016a9884  mov w2,#0x6e7
016a9888  mov x0,x19
016a988c  bl 0x0124a650
016a9890  orr w1,wzr,#0xfffffffe
016a9894  mov x0,x19
016a9898  bl 0x0124c0c0
016a989c  orr w1,wzr,#0xfffffffe
016a98a0  mov x0,x19
016a98a4  bl 0x0124e920
016a98a8  mov w20,w0
016a98ac  adrp x1,0x575e000
016a98b0  add x1,x1,#0x56d
016a98b4  mov x0,x19
016a98b8  bl 0x0124f120
016a98bc  orr w1,wzr,#0xfffffffe
016a98c0  mov w2,#0x1
016a98c4  mov x0,x19
016a98c8  bl 0x0124cfc0
016a98cc  mov x0,x19
016a98d0  mov w1,w20
016a98d4  bl 0x0124e060
016a98d8  orr w1,wzr,#0xfffffffd
016a98dc  mov x0,x19
016a98e0  bl 0x0124c4d0
016a98e4  ldr x19,[sp, #0x10]
016a98e8  orr w1,wzr,#0xfffffffd
016a98ec  mov w2,#0x6e7
016a98f0  mov x0,x19
016a98f4  bl 0x0124a650
016a98f8  orr w1,wzr,#0xfffffffe
016a98fc  mov x0,x19
016a9900  bl 0x0124c0c0
016a9904  orr w1,wzr,#0xfffffffe
016a9908  mov x0,x19
016a990c  bl 0x0124e920
016a9910  mov w20,w0
016a9914  adrp x1,0x575e000
016a9918  add x1,x1,#0x56d
016a991c  mov x0,x19
016a9920  bl 0x0124f120
016a9924  orr w1,wzr,#0xfffffffe
016a9928  mov w2,#0x1
016a992c  mov x0,x19
016a9930  bl 0x0124cfc0
016a9934  mov x0,x19
016a9938  mov w1,w20
016a993c  bl 0x0124e060
016a9940  orr w1,wzr,#0xfffffffd
016a9944  mov x0,x19
016a9948  bl 0x0124c4d0
016a994c  ldr x0,[sp, #0x10]
016a9950  mov w1,#0x10
016a9954  bl 0x0124cba0
016a9958  adrp x8,0x17ab000
016a995c  dup v0.2D,xzr
016a9960  add x8,x8,#0x1f4
016a9964  mov v0.D[0x0],x8
016a9968  str q0,[x0]
016a996c  ldr x0,[sp, #0x10]
016a9970  adrp x1,0x17ab000
016a9974  add x1,x1,#0x6e4
016a9978  mov w2,#0x1
016a997c  bl 0x0124ec90
016a9980  ldr x0,[sp, #0x10]
016a9984  mov w1,#0xffffffff
016a9988  bl 0x0124c0c0
016a998c  ldr x19,[sp, #0x10]
016a9990  orr w1,wzr,#0xfffffffb
016a9994  mov w2,#0x6e7
016a9998  mov x0,x19
016a999c  bl 0x0124a650
016a99a0  orr w1,wzr,#0xfffffffe
016a99a4  mov x0,x19
016a99a8  bl 0x0124c0c0
016a99ac  orr w1,wzr,#0xfffffffe
016a99b0  mov x0,x19
016a99b4  bl 0x0124e920
016a99b8  mov w20,w0
016a99bc  adrp x1,0x575e000
016a99c0  add x1,x1,#0x578
016a99c4  mov x0,x19
016a99c8  bl 0x0124f120
016a99cc  orr w1,wzr,#0xfffffffe
016a99d0  mov w2,#0x1
016a99d4  mov x0,x19
016a99d8  bl 0x0124cfc0
016a99dc  mov x0,x19
016a99e0  mov w1,w20
016a99e4  bl 0x0124e060
016a99e8  orr w1,wzr,#0xfffffffd
016a99ec  mov x0,x19
016a99f0  bl 0x0124c4d0
016a99f4  ldr x19,[sp, #0x10]
016a99f8  orr w1,wzr,#0xfffffffd
016a99fc  mov w2,#0x6e7
016a9a00  mov x0,x19
016a9a04  bl 0x0124a650
016a9a08  orr w1,wzr,#0xfffffffe
016a9a0c  mov x0,x19
016a9a10  bl 0x0124c0c0
016a9a14  orr w1,wzr,#0xfffffffe
016a9a18  mov x0,x19
016a9a1c  bl 0x0124e920
016a9a20  mov w20,w0
016a9a24  adrp x1,0x575e000
016a9a28  add x1,x1,#0x578
016a9a2c  mov x0,x19
016a9a30  bl 0x0124f120
016a9a34  orr w1,wzr,#0xfffffffe
016a9a38  mov w2,#0x1
016a9a3c  mov x0,x19
016a9a40  bl 0x0124cfc0
016a9a44  mov x0,x19
016a9a48  mov w1,w20
016a9a4c  bl 0x0124e060
016a9a50  orr w1,wzr,#0xfffffffd
016a9a54  mov x0,x19
016a9a58  bl 0x0124c4d0
016a9a5c  ldr w8,[sp, #0x18]
016a9a60  ldr x0,[sp, #0x10]
016a9a64  sub w8,w8,#0x3
016a9a68  str w8,[sp, #0x18]
016a9a6c  orr w1,wzr,#0xfffffffc
016a9a70  bl 0x0124c4d0
016a9a74  ldr w8,[sp, #0x18]
016a9a78  ldr x0,[sp, #0x10]
016a9a7c  str wzr,[sp, #0x18]
016a9a80  cmp w8,#0x1
016a9a84  b.lt 0x016a9aa8
016a9a88  mvn w1,w8
016a9a8c  bl 0x0124c4d0
016a9a90  ldr w8,[sp, #0x18]
016a9a94  cmp w8,#0x1
016a9a98  b.lt 0x016a9aa8
016a9a9c  ldr x0,[sp, #0x10]
016a9aa0  mvn w1,w8
016a9aa4  bl 0x0124c4d0
016a9aa8  ldr w8,[sp, #0x8]
016a9aac  cmp w8,#0x1
016a9ab0  b.lt 0x016a9ac0
016a9ab4  ldr x0,[sp]
016a9ab8  mvn w1,w8
016a9abc  bl 0x0124c4d0
016a9ac0  ldp x29,x30,[sp, #0x30]
016a9ac4  ldp x20,x19,[sp, #0x20]
016a9ac8  add sp,sp,#0x40
016a9acc  ret
