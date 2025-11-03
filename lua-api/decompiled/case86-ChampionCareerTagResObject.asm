// ===== case86-ChampionCareerTagResObject @ 0169a7b0 =====
// existing function case86-ChampionCareerTagResObject
0169a7b0  sub sp,sp,#0x40
0169a7b4  stp x20,x19,[sp, #0x20]
0169a7b8  stp x29,x30,[sp, #0x30]
0169a7bc  add x29,sp,#0x30
0169a7c0  adrp x1,0x174a000
0169a7c4  add x1,x1,#0x87c
0169a7c8  mov x19,x0
0169a7cc  bl 0x0124ba40
0169a7d0  adrp x1,0x575d000
0169a7d4  add x1,x1,#0xa06
0169a7d8  mov x0,x19
0169a7dc  str x19,[sp]
0169a7e0  bl 0x01251aa0
0169a7e4  mov w8,#0x1
0169a7e8  str w8,[sp, #0x8]
0169a7ec  mov x0,sp
0169a7f0  bl 0x0174aa04
0169a7f4  adrp x1,0x575f000
0169a7f8  adrp x3,0x736d000
0169a7fc  add x1,x1,#0x12
0169a800  add x3,x3,#0x101
0169a804  add x0,sp,#0x10
0169a808  mov x2,sp
0169a80c  bl 0x017808a8
0169a810  ldr x0,[sp, #0x10]
0169a814  mov w1,#0x10
0169a818  bl 0x0124cba0
0169a81c  adrp x8,0x1780000
0169a820  dup v0.2D,xzr
0169a824  add x8,x8,#0x8a0
0169a828  mov v0.D[0x0],x8
0169a82c  str q0,[x0]
0169a830  ldr x0,[sp, #0x10]
0169a834  adrp x1,0x1780000
0169a838  add x1,x1,#0xc6c
0169a83c  mov w2,#0x1
0169a840  bl 0x0124ec90
0169a844  ldr x0,[sp, #0x10]
0169a848  mov w1,#0xffffffff
0169a84c  bl 0x0124c0c0
0169a850  ldr x19,[sp, #0x10]
0169a854  orr w1,wzr,#0xfffffffb
0169a858  mov w2,#0x6e7
0169a85c  mov x0,x19
0169a860  bl 0x0124a650
0169a864  orr w1,wzr,#0xfffffffe
0169a868  mov x0,x19
0169a86c  bl 0x0124c0c0
0169a870  orr w1,wzr,#0xfffffffe
0169a874  mov x0,x19
0169a878  bl 0x0124e920
0169a87c  mov w20,w0
0169a880  adrp x1,0x5765000
0169a884  add x1,x1,#0x66c
0169a888  mov x0,x19
0169a88c  bl 0x0124f120
0169a890  orr w1,wzr,#0xfffffffe
0169a894  mov w2,#0x1
0169a898  mov x0,x19
0169a89c  bl 0x0124cfc0
0169a8a0  mov x0,x19
0169a8a4  mov w1,w20
0169a8a8  bl 0x0124e060
0169a8ac  orr w1,wzr,#0xfffffffd
0169a8b0  mov x0,x19
0169a8b4  bl 0x0124c4d0
0169a8b8  ldr x19,[sp, #0x10]
0169a8bc  orr w1,wzr,#0xfffffffd
0169a8c0  mov w2,#0x6e7
0169a8c4  mov x0,x19
0169a8c8  bl 0x0124a650
0169a8cc  orr w1,wzr,#0xfffffffe
0169a8d0  mov x0,x19
0169a8d4  bl 0x0124c0c0
0169a8d8  orr w1,wzr,#0xfffffffe
0169a8dc  mov x0,x19
0169a8e0  bl 0x0124e920
0169a8e4  mov w20,w0
0169a8e8  adrp x1,0x5765000
0169a8ec  add x1,x1,#0x66c
0169a8f0  mov x0,x19
0169a8f4  bl 0x0124f120
0169a8f8  orr w1,wzr,#0xfffffffe
0169a8fc  mov w2,#0x1
0169a900  mov x0,x19
0169a904  bl 0x0124cfc0
0169a908  mov x0,x19
0169a90c  mov w1,w20
0169a910  bl 0x0124e060
0169a914  orr w1,wzr,#0xfffffffd
0169a918  mov x0,x19
0169a91c  bl 0x0124c4d0
0169a920  ldr w8,[sp, #0x18]
0169a924  ldr x0,[sp, #0x10]
0169a928  sub w8,w8,#0x3
0169a92c  str w8,[sp, #0x18]
0169a930  orr w1,wzr,#0xfffffffc
0169a934  bl 0x0124c4d0
0169a938  ldr w8,[sp, #0x18]
0169a93c  ldr x0,[sp, #0x10]
0169a940  str wzr,[sp, #0x18]
0169a944  cmp w8,#0x1
0169a948  b.lt 0x0169a96c
0169a94c  mvn w1,w8
0169a950  bl 0x0124c4d0
0169a954  ldr w8,[sp, #0x18]
0169a958  cmp w8,#0x1
0169a95c  b.lt 0x0169a96c
0169a960  ldr x0,[sp, #0x10]
0169a964  mvn w1,w8
0169a968  bl 0x0124c4d0
0169a96c  ldr w8,[sp, #0x8]
0169a970  cmp w8,#0x1
0169a974  b.lt 0x0169a984
0169a978  ldr x0,[sp]
0169a97c  mvn w1,w8
0169a980  bl 0x0124c4d0
0169a984  ldp x29,x30,[sp, #0x30]
0169a988  ldp x20,x19,[sp, #0x20]
0169a98c  add sp,sp,#0x40
0169a990  ret
