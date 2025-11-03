// ===== case449-BattleLevelRule @ 016e96e0 =====
// existing function case449-BattleLevelRule
016e96e0  sub sp,sp,#0x40
016e96e4  stp x20,x19,[sp, #0x20]
016e96e8  stp x29,x30,[sp, #0x30]
016e96ec  add x29,sp,#0x30
016e96f0  adrp x1,0x174a000
016e96f4  add x1,x1,#0x87c
016e96f8  mov x19,x0
016e96fc  bl 0x0124ba40
016e9700  adrp x1,0x575d000
016e9704  add x1,x1,#0xa06
016e9708  mov x0,x19
016e970c  str x19,[sp]
016e9710  bl 0x01251aa0
016e9714  mov w8,#0x1
016e9718  str w8,[sp, #0x8]
016e971c  mov x0,sp
016e9720  bl 0x0174aa04
016e9724  adrp x1,0x5766000
016e9728  adrp x3,0x736d000
016e972c  add x1,x1,#0xa25
016e9730  add x3,x3,#0x101
016e9734  add x0,sp,#0x10
016e9738  mov x2,sp
016e973c  bl 0x0186cbf0
016e9740  ldr x0,[sp, #0x10]
016e9744  mov w1,#0x10
016e9748  bl 0x0124cba0
016e974c  adrp x8,0x186c000
016e9750  dup v0.2D,xzr
016e9754  add x8,x8,#0xbd8
016e9758  mov v0.D[0x0],x8
016e975c  str q0,[x0]
016e9760  ldr x0,[sp, #0x10]
016e9764  adrp x1,0x186c000
016e9768  add x1,x1,#0xfb4
016e976c  mov w2,#0x1
016e9770  bl 0x0124ec90
016e9774  ldr x0,[sp, #0x10]
016e9778  mov w1,#0xffffffff
016e977c  bl 0x0124c0c0
016e9780  ldr x19,[sp, #0x10]
016e9784  orr w1,wzr,#0xfffffffb
016e9788  mov w2,#0x6e7
016e978c  mov x0,x19
016e9790  bl 0x0124a650
016e9794  orr w1,wzr,#0xfffffffe
016e9798  mov x0,x19
016e979c  bl 0x0124c0c0
016e97a0  orr w1,wzr,#0xfffffffe
016e97a4  mov x0,x19
016e97a8  bl 0x0124e920
016e97ac  mov w20,w0
016e97b0  adrp x1,0x5766000
016e97b4  add x1,x1,#0xa35
016e97b8  mov x0,x19
016e97bc  bl 0x0124f120
016e97c0  orr w1,wzr,#0xfffffffe
016e97c4  mov w2,#0x1
016e97c8  mov x0,x19
016e97cc  bl 0x0124cfc0
016e97d0  mov x0,x19
016e97d4  mov w1,w20
016e97d8  bl 0x0124e060
016e97dc  orr w1,wzr,#0xfffffffd
016e97e0  mov x0,x19
016e97e4  bl 0x0124c4d0
016e97e8  ldr x19,[sp, #0x10]
016e97ec  orr w1,wzr,#0xfffffffd
016e97f0  mov w2,#0x6e7
016e97f4  mov x0,x19
016e97f8  bl 0x0124a650
016e97fc  orr w1,wzr,#0xfffffffe
016e9800  mov x0,x19
016e9804  bl 0x0124c0c0
016e9808  orr w1,wzr,#0xfffffffe
016e980c  mov x0,x19
016e9810  bl 0x0124e920
016e9814  mov w20,w0
016e9818  adrp x1,0x5766000
016e981c  add x1,x1,#0xa35
016e9820  mov x0,x19
016e9824  bl 0x0124f120
016e9828  orr w1,wzr,#0xfffffffe
016e982c  mov w2,#0x1
016e9830  mov x0,x19
016e9834  bl 0x0124cfc0
016e9838  mov x0,x19
016e983c  mov w1,w20
016e9840  bl 0x0124e060
016e9844  orr w1,wzr,#0xfffffffd
016e9848  mov x0,x19
016e984c  bl 0x0124c4d0
016e9850  ldr x0,[sp, #0x10]
016e9854  mov w1,#0x10
016e9858  bl 0x0124cba0
016e985c  adrp x8,0x186c000
016e9860  dup v0.2D,xzr
016e9864  add x8,x8,#0xbe0
016e9868  mov v0.D[0x0],x8
016e986c  str q0,[x0]
016e9870  ldr x0,[sp, #0x10]
016e9874  adrp x1,0x186d000
016e9878  add x1,x1,#0xd8
016e987c  mov w2,#0x1
016e9880  bl 0x0124ec90
016e9884  ldr x0,[sp, #0x10]
016e9888  mov w1,#0xffffffff
016e988c  bl 0x0124c0c0
016e9890  ldr x19,[sp, #0x10]
016e9894  orr w1,wzr,#0xfffffffb
016e9898  mov w2,#0x6e7
016e989c  mov x0,x19
016e98a0  bl 0x0124a650
016e98a4  orr w1,wzr,#0xfffffffe
016e98a8  mov x0,x19
016e98ac  bl 0x0124c0c0
016e98b0  orr w1,wzr,#0xfffffffe
016e98b4  mov x0,x19
016e98b8  bl 0x0124e920
016e98bc  mov w20,w0
016e98c0  adrp x1,0x576d000
016e98c4  add x1,x1,#0x54e
016e98c8  mov x0,x19
016e98cc  bl 0x0124f120
016e98d0  orr w1,wzr,#0xfffffffe
016e98d4  mov w2,#0x1
016e98d8  mov x0,x19
016e98dc  bl 0x0124cfc0
016e98e0  mov x0,x19
016e98e4  mov w1,w20
016e98e8  bl 0x0124e060
016e98ec  orr w1,wzr,#0xfffffffd
016e98f0  mov x0,x19
016e98f4  bl 0x0124c4d0
016e98f8  ldr x19,[sp, #0x10]
016e98fc  orr w1,wzr,#0xfffffffd
016e9900  mov w2,#0x6e7
016e9904  mov x0,x19
016e9908  bl 0x0124a650
016e990c  orr w1,wzr,#0xfffffffe
016e9910  mov x0,x19
016e9914  bl 0x0124c0c0
016e9918  orr w1,wzr,#0xfffffffe
016e991c  mov x0,x19
016e9920  bl 0x0124e920
016e9924  mov w20,w0
016e9928  adrp x1,0x576d000
016e992c  add x1,x1,#0x54e
016e9930  mov x0,x19
016e9934  bl 0x0124f120
016e9938  orr w1,wzr,#0xfffffffe
016e993c  mov w2,#0x1
016e9940  mov x0,x19
016e9944  bl 0x0124cfc0
016e9948  mov x0,x19
016e994c  mov w1,w20
016e9950  bl 0x0124e060
016e9954  orr w1,wzr,#0xfffffffd
016e9958  mov x0,x19
016e995c  bl 0x0124c4d0
016e9960  ldr x0,[sp, #0x10]
016e9964  mov w1,#0x10
016e9968  bl 0x0124cba0
016e996c  adrp x8,0x186c000
016e9970  dup v0.2D,xzr
016e9974  add x8,x8,#0xbe8
016e9978  mov v0.D[0x0],x8
016e997c  str q0,[x0]
016e9980  ldr x0,[sp, #0x10]
016e9984  adrp x1,0x186d000
016e9988  add x1,x1,#0x1fc
016e998c  mov w2,#0x1
016e9990  bl 0x0124ec90
016e9994  ldr x0,[sp, #0x10]
016e9998  mov w1,#0xffffffff
016e999c  bl 0x0124c0c0
016e99a0  ldr x19,[sp, #0x10]
016e99a4  orr w1,wzr,#0xfffffffb
016e99a8  mov w2,#0x6e7
016e99ac  mov x0,x19
016e99b0  bl 0x0124a650
016e99b4  orr w1,wzr,#0xfffffffe
016e99b8  mov x0,x19
016e99bc  bl 0x0124c0c0
016e99c0  orr w1,wzr,#0xfffffffe
016e99c4  mov x0,x19
016e99c8  bl 0x0124e920
016e99cc  mov w20,w0
016e99d0  adrp x1,0x5766000
016e99d4  add x1,x1,#0xa4b
016e99d8  mov x0,x19
016e99dc  bl 0x0124f120
016e99e0  orr w1,wzr,#0xfffffffe
016e99e4  mov w2,#0x1
016e99e8  mov x0,x19
016e99ec  bl 0x0124cfc0
016e99f0  mov x0,x19
016e99f4  mov w1,w20
016e99f8  bl 0x0124e060
016e99fc  orr w1,wzr,#0xfffffffd
016e9a00  mov x0,x19
016e9a04  bl 0x0124c4d0
016e9a08  ldr x19,[sp, #0x10]
016e9a0c  orr w1,wzr,#0xfffffffd
016e9a10  mov w2,#0x6e7
016e9a14  mov x0,x19
016e9a18  bl 0x0124a650
016e9a1c  orr w1,wzr,#0xfffffffe
016e9a20  mov x0,x19
016e9a24  bl 0x0124c0c0
016e9a28  orr w1,wzr,#0xfffffffe
016e9a2c  mov x0,x19
016e9a30  bl 0x0124e920
016e9a34  mov w20,w0
016e9a38  adrp x1,0x5766000
016e9a3c  add x1,x1,#0xa4b
016e9a40  mov x0,x19
016e9a44  bl 0x0124f120
016e9a48  orr w1,wzr,#0xfffffffe
016e9a4c  mov w2,#0x1
016e9a50  mov x0,x19
016e9a54  bl 0x0124cfc0
016e9a58  mov x0,x19
016e9a5c  mov w1,w20
016e9a60  bl 0x0124e060
016e9a64  orr w1,wzr,#0xfffffffd
016e9a68  mov x0,x19
016e9a6c  bl 0x0124c4d0
016e9a70  ldr w8,[sp, #0x18]
016e9a74  ldr x0,[sp, #0x10]
016e9a78  sub w8,w8,#0x3
016e9a7c  str w8,[sp, #0x18]
016e9a80  orr w1,wzr,#0xfffffffc
016e9a84  bl 0x0124c4d0
016e9a88  ldr w8,[sp, #0x18]
016e9a8c  ldr x0,[sp, #0x10]
016e9a90  str wzr,[sp, #0x18]
016e9a94  cmp w8,#0x1
016e9a98  b.lt 0x016e9abc
016e9a9c  mvn w1,w8
016e9aa0  bl 0x0124c4d0
016e9aa4  ldr w8,[sp, #0x18]
016e9aa8  cmp w8,#0x1
016e9aac  b.lt 0x016e9abc
016e9ab0  ldr x0,[sp, #0x10]
016e9ab4  mvn w1,w8
016e9ab8  bl 0x0124c4d0
016e9abc  ldr w8,[sp, #0x8]
016e9ac0  cmp w8,#0x1
016e9ac4  b.lt 0x016e9ad4
016e9ac8  ldr x0,[sp]
016e9acc  mvn w1,w8
016e9ad0  bl 0x0124c4d0
016e9ad4  ldp x29,x30,[sp, #0x30]
016e9ad8  ldp x20,x19,[sp, #0x20]
016e9adc  add sp,sp,#0x40
016e9ae0  ret
