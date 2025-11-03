// ===== case830-SharedActorList @ 0173a704 =====
// existing function case830-SharedActorList
0173a704  sub sp,sp,#0x40
0173a708  stp x20,x19,[sp, #0x20]
0173a70c  stp x29,x30,[sp, #0x30]
0173a710  add x29,sp,#0x30
0173a714  adrp x1,0x174a000
0173a718  add x1,x1,#0x87c
0173a71c  mov x19,x0
0173a720  bl 0x0124ba40
0173a724  adrp x1,0x575d000
0173a728  add x1,x1,#0xa06
0173a72c  mov x0,x19
0173a730  str x19,[sp]
0173a734  bl 0x01251aa0
0173a738  mov w8,#0x1
0173a73c  str w8,[sp, #0x8]
0173a740  mov x0,sp
0173a744  bl 0x0174aa04
0173a748  adrp x1,0x5772000
0173a74c  adrp x3,0x736d000
0173a750  add x1,x1,#0x9e4
0173a754  add x3,x3,#0x101
0173a758  add x0,sp,#0x10
0173a75c  mov x2,sp
0173a760  bl 0x019d4994
0173a764  ldr x0,[sp, #0x10]
0173a768  mov w1,#0x10
0173a76c  bl 0x0124cba0
0173a770  adrp x8,0x19d4000
0173a774  dup v0.2D,xzr
0173a778  add x8,x8,#0x98c
0173a77c  mov v0.D[0x0],x8
0173a780  str q0,[x0]
0173a784  ldr x0,[sp, #0x10]
0173a788  adrp x1,0x19d4000
0173a78c  add x1,x1,#0xd58
0173a790  mov w2,#0x1
0173a794  bl 0x0124ec90
0173a798  ldr x0,[sp, #0x10]
0173a79c  mov w1,#0xffffffff
0173a7a0  bl 0x0124c0c0
0173a7a4  ldr x19,[sp, #0x10]
0173a7a8  orr w1,wzr,#0xfffffffb
0173a7ac  mov w2,#0x6e7
0173a7b0  mov x0,x19
0173a7b4  bl 0x0124a650
0173a7b8  orr w1,wzr,#0xfffffffe
0173a7bc  mov x0,x19
0173a7c0  bl 0x0124c0c0
0173a7c4  orr w1,wzr,#0xfffffffe
0173a7c8  mov x0,x19
0173a7cc  bl 0x0124e920
0173a7d0  mov w20,w0
0173a7d4  adrp x1,0x575d000
0173a7d8  add x1,x1,#0xd23
0173a7dc  mov x0,x19
0173a7e0  bl 0x0124f120
0173a7e4  orr w1,wzr,#0xfffffffe
0173a7e8  mov w2,#0x1
0173a7ec  mov x0,x19
0173a7f0  bl 0x0124cfc0
0173a7f4  mov x0,x19
0173a7f8  mov w1,w20
0173a7fc  bl 0x0124e060
0173a800  orr w1,wzr,#0xfffffffd
0173a804  mov x0,x19
0173a808  bl 0x0124c4d0
0173a80c  ldr x19,[sp, #0x10]
0173a810  orr w1,wzr,#0xfffffffd
0173a814  mov w2,#0x6e7
0173a818  mov x0,x19
0173a81c  bl 0x0124a650
0173a820  orr w1,wzr,#0xfffffffe
0173a824  mov x0,x19
0173a828  bl 0x0124c0c0
0173a82c  orr w1,wzr,#0xfffffffe
0173a830  mov x0,x19
0173a834  bl 0x0124e920
0173a838  mov w20,w0
0173a83c  adrp x1,0x575d000
0173a840  add x1,x1,#0xd23
0173a844  mov x0,x19
0173a848  bl 0x0124f120
0173a84c  orr w1,wzr,#0xfffffffe
0173a850  mov w2,#0x1
0173a854  mov x0,x19
0173a858  bl 0x0124cfc0
0173a85c  mov x0,x19
0173a860  mov w1,w20
0173a864  bl 0x0124e060
0173a868  orr w1,wzr,#0xfffffffd
0173a86c  mov x0,x19
0173a870  bl 0x0124c4d0
0173a874  ldr w8,[sp, #0x18]
0173a878  ldr x0,[sp, #0x10]
0173a87c  sub w8,w8,#0x3
0173a880  str w8,[sp, #0x18]
0173a884  orr w1,wzr,#0xfffffffc
0173a888  bl 0x0124c4d0
0173a88c  ldr w8,[sp, #0x18]
0173a890  ldr x0,[sp, #0x10]
0173a894  str wzr,[sp, #0x18]
0173a898  cmp w8,#0x1
0173a89c  b.lt 0x0173a8c0
0173a8a0  mvn w1,w8
0173a8a4  bl 0x0124c4d0
0173a8a8  ldr w8,[sp, #0x18]
0173a8ac  cmp w8,#0x1
0173a8b0  b.lt 0x0173a8c0
0173a8b4  ldr x0,[sp, #0x10]
0173a8b8  mvn w1,w8
0173a8bc  bl 0x0124c4d0
0173a8c0  ldr w8,[sp, #0x8]
0173a8c4  cmp w8,#0x1
0173a8c8  b.lt 0x0173a8d8
0173a8cc  ldr x0,[sp]
0173a8d0  mvn w1,w8
0173a8d4  bl 0x0124c4d0
0173a8d8  ldp x29,x30,[sp, #0x30]
0173a8dc  ldp x20,x19,[sp, #0x20]
0173a8e0  add sp,sp,#0x40
0173a8e4  ret
