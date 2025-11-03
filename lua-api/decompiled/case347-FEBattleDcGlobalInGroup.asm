// ===== case347-FEBattleDcGlobalInGroup @ 016d0794 =====
// existing function case347-FEBattleDcGlobalInGroup
016d0794  sub sp,sp,#0x40
016d0798  stp x20,x19,[sp, #0x20]
016d079c  stp x29,x30,[sp, #0x30]
016d07a0  add x29,sp,#0x30
016d07a4  adrp x1,0x174a000
016d07a8  add x1,x1,#0x87c
016d07ac  mov x19,x0
016d07b0  bl 0x0124ba40
016d07b4  adrp x1,0x575d000
016d07b8  add x1,x1,#0xa06
016d07bc  mov x0,x19
016d07c0  str x19,[sp]
016d07c4  bl 0x01251aa0
016d07c8  mov w8,#0x1
016d07cc  str w8,[sp, #0x8]
016d07d0  mov x0,sp
016d07d4  bl 0x0174aa04
016d07d8  adrp x1,0x5763000
016d07dc  adrp x3,0x736d000
016d07e0  add x1,x1,#0xcb5
016d07e4  add x3,x3,#0x101
016d07e8  add x0,sp,#0x10
016d07ec  mov x2,sp
016d07f0  bl 0x01818324
016d07f4  ldr x0,[sp, #0x10]
016d07f8  mov w1,#0x10
016d07fc  bl 0x0124cba0
016d0800  adrp x8,0x1818000
016d0804  dup v0.2D,xzr
016d0808  add x8,x8,#0x31c
016d080c  mov v0.D[0x0],x8
016d0810  str q0,[x0]
016d0814  ldr x0,[sp, #0x10]
016d0818  adrp x1,0x1818000
016d081c  add x1,x1,#0x6e8
016d0820  mov w2,#0x1
016d0824  bl 0x0124ec90
016d0828  ldr x0,[sp, #0x10]
016d082c  mov w1,#0xffffffff
016d0830  bl 0x0124c0c0
016d0834  ldr x19,[sp, #0x10]
016d0838  orr w1,wzr,#0xfffffffb
016d083c  mov w2,#0x6e7
016d0840  mov x0,x19
016d0844  bl 0x0124a650
016d0848  orr w1,wzr,#0xfffffffe
016d084c  mov x0,x19
016d0850  bl 0x0124c0c0
016d0854  orr w1,wzr,#0xfffffffe
016d0858  mov x0,x19
016d085c  bl 0x0124e920
016d0860  mov w20,w0
016d0864  adrp x1,0x5763000
016d0868  add x1,x1,#0xccd
016d086c  mov x0,x19
016d0870  bl 0x0124f120
016d0874  orr w1,wzr,#0xfffffffe
016d0878  mov w2,#0x1
016d087c  mov x0,x19
016d0880  bl 0x0124cfc0
016d0884  mov x0,x19
016d0888  mov w1,w20
016d088c  bl 0x0124e060
016d0890  orr w1,wzr,#0xfffffffd
016d0894  mov x0,x19
016d0898  bl 0x0124c4d0
016d089c  ldr x19,[sp, #0x10]
016d08a0  orr w1,wzr,#0xfffffffd
016d08a4  mov w2,#0x6e7
016d08a8  mov x0,x19
016d08ac  bl 0x0124a650
016d08b0  orr w1,wzr,#0xfffffffe
016d08b4  mov x0,x19
016d08b8  bl 0x0124c0c0
016d08bc  orr w1,wzr,#0xfffffffe
016d08c0  mov x0,x19
016d08c4  bl 0x0124e920
016d08c8  mov w20,w0
016d08cc  adrp x1,0x5763000
016d08d0  add x1,x1,#0xccd
016d08d4  mov x0,x19
016d08d8  bl 0x0124f120
016d08dc  orr w1,wzr,#0xfffffffe
016d08e0  mov w2,#0x1
016d08e4  mov x0,x19
016d08e8  bl 0x0124cfc0
016d08ec  mov x0,x19
016d08f0  mov w1,w20
016d08f4  bl 0x0124e060
016d08f8  orr w1,wzr,#0xfffffffd
016d08fc  mov x0,x19
016d0900  bl 0x0124c4d0
016d0904  ldr w8,[sp, #0x18]
016d0908  ldr x0,[sp, #0x10]
016d090c  sub w8,w8,#0x3
016d0910  str w8,[sp, #0x18]
016d0914  orr w1,wzr,#0xfffffffc
016d0918  bl 0x0124c4d0
016d091c  ldr w8,[sp, #0x18]
016d0920  ldr x0,[sp, #0x10]
016d0924  str wzr,[sp, #0x18]
016d0928  cmp w8,#0x1
016d092c  b.lt 0x016d0950
016d0930  mvn w1,w8
016d0934  bl 0x0124c4d0
016d0938  ldr w8,[sp, #0x18]
016d093c  cmp w8,#0x1
016d0940  b.lt 0x016d0950
016d0944  ldr x0,[sp, #0x10]
016d0948  mvn w1,w8
016d094c  bl 0x0124c4d0
016d0950  ldr w8,[sp, #0x8]
016d0954  cmp w8,#0x1
016d0958  b.lt 0x016d0968
016d095c  ldr x0,[sp]
016d0960  mvn w1,w8
016d0964  bl 0x0124c4d0
016d0968  ldp x29,x30,[sp, #0x30]
016d096c  ldp x20,x19,[sp, #0x20]
016d0970  add sp,sp,#0x40
016d0974  ret
