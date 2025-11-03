// ===== case562-AttrData @ 016ff678 =====
// existing function case562-AttrData
016ff678  sub sp,sp,#0x40
016ff67c  stp x20,x19,[sp, #0x20]
016ff680  stp x29,x30,[sp, #0x30]
016ff684  add x29,sp,#0x30
016ff688  adrp x1,0x174a000
016ff68c  add x1,x1,#0x87c
016ff690  mov x19,x0
016ff694  bl 0x0124ba40
016ff698  adrp x1,0x575d000
016ff69c  add x1,x1,#0xa06
016ff6a0  mov x0,x19
016ff6a4  str x19,[sp]
016ff6a8  bl 0x01251aa0
016ff6ac  mov w8,#0x1
016ff6b0  str w8,[sp, #0x8]
016ff6b4  mov x0,sp
016ff6b8  bl 0x0174aa04
016ff6bc  adrp x1,0x576c000
016ff6c0  adrp x3,0x736d000
016ff6c4  add x1,x1,#0x9ef
016ff6c8  add x3,x3,#0x101
016ff6cc  add x0,sp,#0x10
016ff6d0  mov x2,sp
016ff6d4  bl 0x018ce2d8
016ff6d8  ldr x0,[sp, #0x10]
016ff6dc  mov w1,#0x10
016ff6e0  bl 0x0124cba0
016ff6e4  adrp x8,0x18ce000
016ff6e8  dup v0.2D,xzr
016ff6ec  add x8,x8,#0x2d0
016ff6f0  mov v0.D[0x0],x8
016ff6f4  str q0,[x0]
016ff6f8  ldr x0,[sp, #0x10]
016ff6fc  adrp x1,0x18ce000
016ff700  add x1,x1,#0x69c
016ff704  mov w2,#0x1
016ff708  bl 0x0124ec90
016ff70c  ldr x0,[sp, #0x10]
016ff710  mov w1,#0xffffffff
016ff714  bl 0x0124c0c0
016ff718  ldr x19,[sp, #0x10]
016ff71c  orr w1,wzr,#0xfffffffb
016ff720  mov w2,#0x6e7
016ff724  mov x0,x19
016ff728  bl 0x0124a650
016ff72c  orr w1,wzr,#0xfffffffe
016ff730  mov x0,x19
016ff734  bl 0x0124c0c0
016ff738  orr w1,wzr,#0xfffffffe
016ff73c  mov x0,x19
016ff740  bl 0x0124e920
016ff744  mov w20,w0
016ff748  adrp x1,0x5762000
016ff74c  add x1,x1,#0x1cd
016ff750  mov x0,x19
016ff754  bl 0x0124f120
016ff758  orr w1,wzr,#0xfffffffe
016ff75c  mov w2,#0x1
016ff760  mov x0,x19
016ff764  bl 0x0124cfc0
016ff768  mov x0,x19
016ff76c  mov w1,w20
016ff770  bl 0x0124e060
016ff774  orr w1,wzr,#0xfffffffd
016ff778  mov x0,x19
016ff77c  bl 0x0124c4d0
016ff780  ldr x19,[sp, #0x10]
016ff784  orr w1,wzr,#0xfffffffd
016ff788  mov w2,#0x6e7
016ff78c  mov x0,x19
016ff790  bl 0x0124a650
016ff794  orr w1,wzr,#0xfffffffe
016ff798  mov x0,x19
016ff79c  bl 0x0124c0c0
016ff7a0  orr w1,wzr,#0xfffffffe
016ff7a4  mov x0,x19
016ff7a8  bl 0x0124e920
016ff7ac  mov w20,w0
016ff7b0  adrp x1,0x5762000
016ff7b4  add x1,x1,#0x1cd
016ff7b8  mov x0,x19
016ff7bc  bl 0x0124f120
016ff7c0  orr w1,wzr,#0xfffffffe
016ff7c4  mov w2,#0x1
016ff7c8  mov x0,x19
016ff7cc  bl 0x0124cfc0
016ff7d0  mov x0,x19
016ff7d4  mov w1,w20
016ff7d8  bl 0x0124e060
016ff7dc  orr w1,wzr,#0xfffffffd
016ff7e0  mov x0,x19
016ff7e4  bl 0x0124c4d0
016ff7e8  ldr w8,[sp, #0x18]
016ff7ec  ldr x0,[sp, #0x10]
016ff7f0  sub w8,w8,#0x3
016ff7f4  str w8,[sp, #0x18]
016ff7f8  orr w1,wzr,#0xfffffffc
016ff7fc  bl 0x0124c4d0
016ff800  ldr w8,[sp, #0x18]
016ff804  ldr x0,[sp, #0x10]
016ff808  str wzr,[sp, #0x18]
016ff80c  cmp w8,#0x1
016ff810  b.lt 0x016ff834
016ff814  mvn w1,w8
016ff818  bl 0x0124c4d0
016ff81c  ldr w8,[sp, #0x18]
016ff820  cmp w8,#0x1
016ff824  b.lt 0x016ff834
016ff828  ldr x0,[sp, #0x10]
016ff82c  mvn w1,w8
016ff830  bl 0x0124c4d0
016ff834  ldr w8,[sp, #0x8]
016ff838  cmp w8,#0x1
016ff83c  b.lt 0x016ff84c
016ff840  ldr x0,[sp]
016ff844  mvn w1,w8
016ff848  bl 0x0124c4d0
016ff84c  ldp x29,x30,[sp, #0x30]
016ff850  ldp x20,x19,[sp, #0x20]
016ff854  add sp,sp,#0x40
016ff858  ret
