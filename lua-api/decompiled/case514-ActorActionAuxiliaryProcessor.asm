// ===== case514-ActorActionAuxiliaryProcessor @ 016f67b8 =====
// existing function case514-ActorActionAuxiliaryProcessor
016f67b8  sub sp,sp,#0x40
016f67bc  stp x20,x19,[sp, #0x20]
016f67c0  stp x29,x30,[sp, #0x30]
016f67c4  add x29,sp,#0x30
016f67c8  adrp x1,0x174a000
016f67cc  add x1,x1,#0x87c
016f67d0  mov x19,x0
016f67d4  bl 0x0124ba40
016f67d8  adrp x1,0x575d000
016f67dc  add x1,x1,#0xa06
016f67e0  mov x0,x19
016f67e4  str x19,[sp]
016f67e8  bl 0x01251aa0
016f67ec  mov w8,#0x1
016f67f0  str w8,[sp, #0x8]
016f67f4  mov x0,sp
016f67f8  bl 0x0174aa04
016f67fc  adrp x1,0x5768000
016f6800  adrp x3,0x736d000
016f6804  add x1,x1,#0x5d9
016f6808  add x3,x3,#0x101
016f680c  add x0,sp,#0x10
016f6810  mov x2,sp
016f6814  bl 0x018a1984
016f6818  ldr x0,[sp, #0x10]
016f681c  mov w1,#0x10
016f6820  bl 0x0124cba0
016f6824  adrp x8,0x18a1000
016f6828  dup v0.2D,xzr
016f682c  add x8,x8,#0x97c
016f6830  mov v0.D[0x0],x8
016f6834  str q0,[x0]
016f6838  ldr x0,[sp, #0x10]
016f683c  adrp x1,0x18a1000
016f6840  add x1,x1,#0xd48
016f6844  mov w2,#0x1
016f6848  bl 0x0124ec90
016f684c  ldr x0,[sp, #0x10]
016f6850  mov w1,#0xffffffff
016f6854  bl 0x0124c0c0
016f6858  ldr x19,[sp, #0x10]
016f685c  orr w1,wzr,#0xfffffffb
016f6860  mov w2,#0x6e7
016f6864  mov x0,x19
016f6868  bl 0x0124a650
016f686c  orr w1,wzr,#0xfffffffe
016f6870  mov x0,x19
016f6874  bl 0x0124c0c0
016f6878  orr w1,wzr,#0xfffffffe
016f687c  mov x0,x19
016f6880  bl 0x0124e920
016f6884  mov w20,w0
016f6888  adrp x1,0x5762000
016f688c  add x1,x1,#0x1cd
016f6890  mov x0,x19
016f6894  bl 0x0124f120
016f6898  orr w1,wzr,#0xfffffffe
016f689c  mov w2,#0x1
016f68a0  mov x0,x19
016f68a4  bl 0x0124cfc0
016f68a8  mov x0,x19
016f68ac  mov w1,w20
016f68b0  bl 0x0124e060
016f68b4  orr w1,wzr,#0xfffffffd
016f68b8  mov x0,x19
016f68bc  bl 0x0124c4d0
016f68c0  ldr x19,[sp, #0x10]
016f68c4  orr w1,wzr,#0xfffffffd
016f68c8  mov w2,#0x6e7
016f68cc  mov x0,x19
016f68d0  bl 0x0124a650
016f68d4  orr w1,wzr,#0xfffffffe
016f68d8  mov x0,x19
016f68dc  bl 0x0124c0c0
016f68e0  orr w1,wzr,#0xfffffffe
016f68e4  mov x0,x19
016f68e8  bl 0x0124e920
016f68ec  mov w20,w0
016f68f0  adrp x1,0x5762000
016f68f4  add x1,x1,#0x1cd
016f68f8  mov x0,x19
016f68fc  bl 0x0124f120
016f6900  orr w1,wzr,#0xfffffffe
016f6904  mov w2,#0x1
016f6908  mov x0,x19
016f690c  bl 0x0124cfc0
016f6910  mov x0,x19
016f6914  mov w1,w20
016f6918  bl 0x0124e060
016f691c  orr w1,wzr,#0xfffffffd
016f6920  mov x0,x19
016f6924  bl 0x0124c4d0
016f6928  ldr w8,[sp, #0x18]
016f692c  ldr x0,[sp, #0x10]
016f6930  sub w8,w8,#0x3
016f6934  str w8,[sp, #0x18]
016f6938  orr w1,wzr,#0xfffffffc
016f693c  bl 0x0124c4d0
016f6940  ldr w8,[sp, #0x18]
016f6944  ldr x0,[sp, #0x10]
016f6948  str wzr,[sp, #0x18]
016f694c  cmp w8,#0x1
016f6950  b.lt 0x016f6974
016f6954  mvn w1,w8
016f6958  bl 0x0124c4d0
016f695c  ldr w8,[sp, #0x18]
016f6960  cmp w8,#0x1
016f6964  b.lt 0x016f6974
016f6968  ldr x0,[sp, #0x10]
016f696c  mvn w1,w8
016f6970  bl 0x0124c4d0
016f6974  ldr w8,[sp, #0x8]
016f6978  cmp w8,#0x1
016f697c  b.lt 0x016f698c
016f6980  ldr x0,[sp]
016f6984  mvn w1,w8
016f6988  bl 0x0124c4d0
016f698c  ldp x29,x30,[sp, #0x30]
016f6990  ldp x20,x19,[sp, #0x20]
016f6994  add sp,sp,#0x40
016f6998  ret
