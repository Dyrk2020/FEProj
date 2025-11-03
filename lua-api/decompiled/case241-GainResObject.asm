// ===== case241-GainResObject @ 016b5524 =====
// existing function case241-GainResObject
016b5524  sub sp,sp,#0x40
016b5528  stp x20,x19,[sp, #0x20]
016b552c  stp x29,x30,[sp, #0x30]
016b5530  add x29,sp,#0x30
016b5534  adrp x1,0x174a000
016b5538  add x1,x1,#0x87c
016b553c  mov x19,x0
016b5540  bl 0x0124ba40
016b5544  adrp x1,0x575d000
016b5548  add x1,x1,#0xa06
016b554c  mov x0,x19
016b5550  str x19,[sp]
016b5554  bl 0x01251aa0
016b5558  mov w8,#0x1
016b555c  str w8,[sp, #0x8]
016b5560  mov x0,sp
016b5564  bl 0x0174aa04
016b5568  adrp x1,0x5761000
016b556c  adrp x3,0x736d000
016b5570  add x1,x1,#0x2bb
016b5574  add x3,x3,#0x101
016b5578  add x0,sp,#0x10
016b557c  mov x2,sp
016b5580  bl 0x017d13ac
016b5584  ldr x0,[sp, #0x10]
016b5588  mov w1,#0x10
016b558c  bl 0x0124cba0
016b5590  adrp x8,0x17d1000
016b5594  dup v0.2D,xzr
016b5598  add x8,x8,#0x39c
016b559c  mov v0.D[0x0],x8
016b55a0  str q0,[x0]
016b55a4  ldr x0,[sp, #0x10]
016b55a8  adrp x1,0x17d1000
016b55ac  add x1,x1,#0x770
016b55b0  mov w2,#0x1
016b55b4  bl 0x0124ec90
016b55b8  ldr x0,[sp, #0x10]
016b55bc  mov w1,#0xffffffff
016b55c0  bl 0x0124c0c0
016b55c4  ldr x19,[sp, #0x10]
016b55c8  orr w1,wzr,#0xfffffffb
016b55cc  mov w2,#0x6e7
016b55d0  mov x0,x19
016b55d4  bl 0x0124a650
016b55d8  orr w1,wzr,#0xfffffffe
016b55dc  mov x0,x19
016b55e0  bl 0x0124c0c0
016b55e4  orr w1,wzr,#0xfffffffe
016b55e8  mov x0,x19
016b55ec  bl 0x0124e920
016b55f0  mov w20,w0
016b55f4  adrp x1,0x575e000
016b55f8  add x1,x1,#0x56d
016b55fc  mov x0,x19
016b5600  bl 0x0124f120
016b5604  orr w1,wzr,#0xfffffffe
016b5608  mov w2,#0x1
016b560c  mov x0,x19
016b5610  bl 0x0124cfc0
016b5614  mov x0,x19
016b5618  mov w1,w20
016b561c  bl 0x0124e060
016b5620  orr w1,wzr,#0xfffffffd
016b5624  mov x0,x19
016b5628  bl 0x0124c4d0
016b562c  ldr x19,[sp, #0x10]
016b5630  orr w1,wzr,#0xfffffffd
016b5634  mov w2,#0x6e7
016b5638  mov x0,x19
016b563c  bl 0x0124a650
016b5640  orr w1,wzr,#0xfffffffe
016b5644  mov x0,x19
016b5648  bl 0x0124c0c0
016b564c  orr w1,wzr,#0xfffffffe
016b5650  mov x0,x19
016b5654  bl 0x0124e920
016b5658  mov w20,w0
016b565c  adrp x1,0x575e000
016b5660  add x1,x1,#0x56d
016b5664  mov x0,x19
016b5668  bl 0x0124f120
016b566c  orr w1,wzr,#0xfffffffe
016b5670  mov w2,#0x1
016b5674  mov x0,x19
016b5678  bl 0x0124cfc0
016b567c  mov x0,x19
016b5680  mov w1,w20
016b5684  bl 0x0124e060
016b5688  orr w1,wzr,#0xfffffffd
016b568c  mov x0,x19
016b5690  bl 0x0124c4d0
016b5694  ldr x0,[sp, #0x10]
016b5698  mov w1,#0x10
016b569c  bl 0x0124cba0
016b56a0  adrp x8,0x17d1000
016b56a4  dup v0.2D,xzr
016b56a8  add x8,x8,#0x3a4
016b56ac  mov v0.D[0x0],x8
016b56b0  str q0,[x0]
016b56b4  ldr x0,[sp, #0x10]
016b56b8  adrp x1,0x17d1000
016b56bc  add x1,x1,#0x894
016b56c0  mov w2,#0x1
016b56c4  bl 0x0124ec90
016b56c8  ldr x0,[sp, #0x10]
016b56cc  mov w1,#0xffffffff
016b56d0  bl 0x0124c0c0
016b56d4  ldr x19,[sp, #0x10]
016b56d8  orr w1,wzr,#0xfffffffb
016b56dc  mov w2,#0x6e7
016b56e0  mov x0,x19
016b56e4  bl 0x0124a650
016b56e8  orr w1,wzr,#0xfffffffe
016b56ec  mov x0,x19
016b56f0  bl 0x0124c0c0
016b56f4  orr w1,wzr,#0xfffffffe
016b56f8  mov x0,x19
016b56fc  bl 0x0124e920
016b5700  mov w20,w0
016b5704  adrp x1,0x575e000
016b5708  add x1,x1,#0x578
016b570c  mov x0,x19
016b5710  bl 0x0124f120
016b5714  orr w1,wzr,#0xfffffffe
016b5718  mov w2,#0x1
016b571c  mov x0,x19
016b5720  bl 0x0124cfc0
016b5724  mov x0,x19
016b5728  mov w1,w20
016b572c  bl 0x0124e060
016b5730  orr w1,wzr,#0xfffffffd
016b5734  mov x0,x19
016b5738  bl 0x0124c4d0
016b573c  ldr x19,[sp, #0x10]
016b5740  orr w1,wzr,#0xfffffffd
016b5744  mov w2,#0x6e7
016b5748  mov x0,x19
016b574c  bl 0x0124a650
016b5750  orr w1,wzr,#0xfffffffe
016b5754  mov x0,x19
016b5758  bl 0x0124c0c0
016b575c  orr w1,wzr,#0xfffffffe
016b5760  mov x0,x19
016b5764  bl 0x0124e920
016b5768  mov w20,w0
016b576c  adrp x1,0x575e000
016b5770  add x1,x1,#0x578
016b5774  mov x0,x19
016b5778  bl 0x0124f120
016b577c  orr w1,wzr,#0xfffffffe
016b5780  mov w2,#0x1
016b5784  mov x0,x19
016b5788  bl 0x0124cfc0
016b578c  mov x0,x19
016b5790  mov w1,w20
016b5794  bl 0x0124e060
016b5798  orr w1,wzr,#0xfffffffd
016b579c  mov x0,x19
016b57a0  bl 0x0124c4d0
016b57a4  ldr w8,[sp, #0x18]
016b57a8  ldr x0,[sp, #0x10]
016b57ac  sub w8,w8,#0x3
016b57b0  str w8,[sp, #0x18]
016b57b4  orr w1,wzr,#0xfffffffc
016b57b8  bl 0x0124c4d0
016b57bc  ldr w8,[sp, #0x18]
016b57c0  ldr x0,[sp, #0x10]
016b57c4  str wzr,[sp, #0x18]
016b57c8  cmp w8,#0x1
016b57cc  b.lt 0x016b57f0
016b57d0  mvn w1,w8
016b57d4  bl 0x0124c4d0
016b57d8  ldr w8,[sp, #0x18]
016b57dc  cmp w8,#0x1
016b57e0  b.lt 0x016b57f0
016b57e4  ldr x0,[sp, #0x10]
016b57e8  mvn w1,w8
016b57ec  bl 0x0124c4d0
016b57f0  ldr w8,[sp, #0x8]
016b57f4  cmp w8,#0x1
016b57f8  b.lt 0x016b5808
016b57fc  ldr x0,[sp]
016b5800  mvn w1,w8
016b5804  bl 0x0124c4d0
016b5808  ldp x29,x30,[sp, #0x30]
016b580c  ldp x20,x19,[sp, #0x20]
016b5810  add sp,sp,#0x40
016b5814  ret
