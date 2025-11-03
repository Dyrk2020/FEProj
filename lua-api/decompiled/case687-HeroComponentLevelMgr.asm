// ===== case687-HeroComponentLevelMgr @ 0171a81c =====
// existing function case687-HeroComponentLevelMgr
0171a81c  sub sp,sp,#0x50
0171a820  str x21,[sp, #0x20]
0171a824  stp x20,x19,[sp, #0x30]
0171a828  stp x29,x30,[sp, #0x40]
0171a82c  add x29,sp,#0x40
0171a830  adrp x1,0x174a000
0171a834  add x1,x1,#0x87c
0171a838  mov x19,x0
0171a83c  bl 0x0124ba40
0171a840  adrp x1,0x575d000
0171a844  add x1,x1,#0xa06
0171a848  mov x0,x19
0171a84c  str x19,[sp]
0171a850  bl 0x01251aa0
0171a854  mov w8,#0x1
0171a858  str w8,[sp, #0x8]
0171a85c  mov x0,sp
0171a860  bl 0x0174aa04
0171a864  adrp x1,0x576d000
0171a868  adrp x3,0x736d000
0171a86c  add x1,x1,#0x52d
0171a870  add x3,x3,#0x101
0171a874  add x0,sp,#0x10
0171a878  mov x2,sp
0171a87c  bl 0x0194cc6c
0171a880  adrp x1,0x576d000
0171a884  adrp x2,0x194c000
0171a888  adrp x4,0x194c000
0171a88c  add x1,x1,#0x543
0171a890  add x2,x2,#0xbfc
0171a894  add x4,x4,#0xc04
0171a898  add x0,sp,#0x10
0171a89c  mov x3,xzr
0171a8a0  mov x5,xzr
0171a8a4  bl 0x0194ca14
0171a8a8  mov x19,x0
0171a8ac  ldr x0,[x19]
0171a8b0  mov w1,#0x10
0171a8b4  bl 0x0124cba0
0171a8b8  adrp x8,0x194c000
0171a8bc  dup v0.2D,xzr
0171a8c0  add x8,x8,#0xc64
0171a8c4  mov v0.D[0x0],x8
0171a8c8  str q0,[x0]
0171a8cc  ldr x0,[x19]
0171a8d0  adrp x1,0x194d000
0171a8d4  add x1,x1,#0x3e4
0171a8d8  mov w2,#0x1
0171a8dc  bl 0x0124ec90
0171a8e0  ldr x0,[x19]
0171a8e4  mov w1,#0xffffffff
0171a8e8  bl 0x0124c0c0
0171a8ec  ldr x20,[x19]
0171a8f0  orr w1,wzr,#0xfffffffb
0171a8f4  mov w2,#0x6e7
0171a8f8  mov x0,x20
0171a8fc  bl 0x0124a650
0171a900  orr w1,wzr,#0xfffffffe
0171a904  mov x0,x20
0171a908  bl 0x0124c0c0
0171a90c  orr w1,wzr,#0xfffffffe
0171a910  mov x0,x20
0171a914  bl 0x0124e920
0171a918  mov w21,w0
0171a91c  adrp x1,0x576d000
0171a920  add x1,x1,#0x54d
0171a924  mov x0,x20
0171a928  bl 0x0124f120
0171a92c  orr w1,wzr,#0xfffffffe
0171a930  mov w2,#0x1
0171a934  mov x0,x20
0171a938  bl 0x0124cfc0
0171a93c  mov x0,x20
0171a940  mov w1,w21
0171a944  bl 0x0124e060
0171a948  orr w1,wzr,#0xfffffffd
0171a94c  mov x0,x20
0171a950  bl 0x0124c4d0
0171a954  ldr x20,[x19]
0171a958  orr w1,wzr,#0xfffffffd
0171a95c  mov w2,#0x6e7
0171a960  mov x0,x20
0171a964  bl 0x0124a650
0171a968  orr w1,wzr,#0xfffffffe
0171a96c  mov x0,x20
0171a970  bl 0x0124c0c0
0171a974  orr w1,wzr,#0xfffffffe
0171a978  mov x0,x20
0171a97c  bl 0x0124e920
0171a980  mov w21,w0
0171a984  adrp x1,0x576d000
0171a988  add x1,x1,#0x54d
0171a98c  mov x0,x20
0171a990  bl 0x0124f120
0171a994  orr w1,wzr,#0xfffffffe
0171a998  mov w2,#0x1
0171a99c  mov x0,x20
0171a9a0  bl 0x0124cfc0
0171a9a4  mov x0,x20
0171a9a8  mov w1,w21
0171a9ac  bl 0x0124e060
0171a9b0  orr w1,wzr,#0xfffffffd
0171a9b4  mov x0,x20
0171a9b8  bl 0x0124c4d0
0171a9bc  ldr w8,[x19, #0x8]
0171a9c0  ldr x0,[x19]
0171a9c4  sub w8,w8,#0x3
0171a9c8  str w8,[x19, #0x8]
0171a9cc  orr w1,wzr,#0xfffffffc
0171a9d0  bl 0x0124c4d0
0171a9d4  ldr w8,[x19, #0x8]
0171a9d8  ldr x0,[x19]
0171a9dc  str wzr,[x19, #0x8]
0171a9e0  cmp w8,#0x1
0171a9e4  b.lt 0x0171a9f0
0171a9e8  mvn w1,w8
0171a9ec  bl 0x0124c4d0
0171a9f0  ldr w8,[sp, #0x18]
0171a9f4  cmp w8,#0x1
0171a9f8  b.lt 0x0171aa08
0171a9fc  ldr x0,[sp, #0x10]
0171aa00  mvn w1,w8
0171aa04  bl 0x0124c4d0
0171aa08  ldr w8,[sp, #0x8]
0171aa0c  cmp w8,#0x1
0171aa10  b.lt 0x0171aa20
0171aa14  ldr x0,[sp]
0171aa18  mvn w1,w8
0171aa1c  bl 0x0124c4d0
0171aa20  ldp x29,x30,[sp, #0x40]
0171aa24  ldp x20,x19,[sp, #0x30]
0171aa28  ldr x21,[sp, #0x20]
0171aa2c  add sp,sp,#0x50
0171aa30  ret
