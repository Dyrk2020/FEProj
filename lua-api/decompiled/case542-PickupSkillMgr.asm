// ===== case542-PickupSkillMgr @ 016fb6e0 =====
// existing function case542-PickupSkillMgr
016fb6e0  sub sp,sp,#0x40
016fb6e4  stp x20,x19,[sp, #0x20]
016fb6e8  stp x29,x30,[sp, #0x30]
016fb6ec  add x29,sp,#0x30
016fb6f0  adrp x1,0x174a000
016fb6f4  add x1,x1,#0x87c
016fb6f8  mov x19,x0
016fb6fc  bl 0x0124ba40
016fb700  adrp x1,0x575d000
016fb704  add x1,x1,#0xa06
016fb708  mov x0,x19
016fb70c  str x19,[sp]
016fb710  bl 0x01251aa0
016fb714  mov w8,#0x1
016fb718  str w8,[sp, #0x8]
016fb71c  mov x0,sp
016fb720  bl 0x0174aa04
016fb724  adrp x1,0x5769000
016fb728  adrp x3,0x736d000
016fb72c  add x1,x1,#0x13a
016fb730  add x3,x3,#0x101
016fb734  add x0,sp,#0x10
016fb738  mov x2,sp
016fb73c  bl 0x018bbfa4
016fb740  ldr x0,[sp, #0x10]
016fb744  mov w1,#0x10
016fb748  bl 0x0124cba0
016fb74c  adrp x8,0x18bb000
016fb750  dup v0.2D,xzr
016fb754  add x8,x8,#0xf9c
016fb758  mov v0.D[0x0],x8
016fb75c  str q0,[x0]
016fb760  ldr x0,[sp, #0x10]
016fb764  adrp x1,0x18bc000
016fb768  add x1,x1,#0x368
016fb76c  mov w2,#0x1
016fb770  bl 0x0124ec90
016fb774  ldr x0,[sp, #0x10]
016fb778  mov w1,#0xffffffff
016fb77c  bl 0x0124c0c0
016fb780  ldr x19,[sp, #0x10]
016fb784  orr w1,wzr,#0xfffffffb
016fb788  mov w2,#0x6e7
016fb78c  mov x0,x19
016fb790  bl 0x0124a650
016fb794  orr w1,wzr,#0xfffffffe
016fb798  mov x0,x19
016fb79c  bl 0x0124c0c0
016fb7a0  orr w1,wzr,#0xfffffffe
016fb7a4  mov x0,x19
016fb7a8  bl 0x0124e920
016fb7ac  mov w20,w0
016fb7b0  adrp x1,0x5762000
016fb7b4  add x1,x1,#0x1cd
016fb7b8  mov x0,x19
016fb7bc  bl 0x0124f120
016fb7c0  orr w1,wzr,#0xfffffffe
016fb7c4  mov w2,#0x1
016fb7c8  mov x0,x19
016fb7cc  bl 0x0124cfc0
016fb7d0  mov x0,x19
016fb7d4  mov w1,w20
016fb7d8  bl 0x0124e060
016fb7dc  orr w1,wzr,#0xfffffffd
016fb7e0  mov x0,x19
016fb7e4  bl 0x0124c4d0
016fb7e8  ldr x19,[sp, #0x10]
016fb7ec  orr w1,wzr,#0xfffffffd
016fb7f0  mov w2,#0x6e7
016fb7f4  mov x0,x19
016fb7f8  bl 0x0124a650
016fb7fc  orr w1,wzr,#0xfffffffe
016fb800  mov x0,x19
016fb804  bl 0x0124c0c0
016fb808  orr w1,wzr,#0xfffffffe
016fb80c  mov x0,x19
016fb810  bl 0x0124e920
016fb814  mov w20,w0
016fb818  adrp x1,0x5762000
016fb81c  add x1,x1,#0x1cd
016fb820  mov x0,x19
016fb824  bl 0x0124f120
016fb828  orr w1,wzr,#0xfffffffe
016fb82c  mov w2,#0x1
016fb830  mov x0,x19
016fb834  bl 0x0124cfc0
016fb838  mov x0,x19
016fb83c  mov w1,w20
016fb840  bl 0x0124e060
016fb844  orr w1,wzr,#0xfffffffd
016fb848  mov x0,x19
016fb84c  bl 0x0124c4d0
016fb850  ldr w8,[sp, #0x18]
016fb854  ldr x0,[sp, #0x10]
016fb858  sub w8,w8,#0x3
016fb85c  str w8,[sp, #0x18]
016fb860  orr w1,wzr,#0xfffffffc
016fb864  bl 0x0124c4d0
016fb868  ldr w8,[sp, #0x18]
016fb86c  ldr x0,[sp, #0x10]
016fb870  str wzr,[sp, #0x18]
016fb874  cmp w8,#0x1
016fb878  b.lt 0x016fb89c
016fb87c  mvn w1,w8
016fb880  bl 0x0124c4d0
016fb884  ldr w8,[sp, #0x18]
016fb888  cmp w8,#0x1
016fb88c  b.lt 0x016fb89c
016fb890  ldr x0,[sp, #0x10]
016fb894  mvn w1,w8
016fb898  bl 0x0124c4d0
016fb89c  ldr w8,[sp, #0x8]
016fb8a0  cmp w8,#0x1
016fb8a4  b.lt 0x016fb8b4
016fb8a8  ldr x0,[sp]
016fb8ac  mvn w1,w8
016fb8b0  bl 0x0124c4d0
016fb8b4  ldp x29,x30,[sp, #0x30]
016fb8b8  ldp x20,x19,[sp, #0x20]
016fb8bc  add sp,sp,#0x40
016fb8c0  ret
