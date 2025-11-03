// ===== case184-EvacuateItemResObject @ 016ac560 =====
// existing function case184-EvacuateItemResObject
016ac560  sub sp,sp,#0x40
016ac564  stp x20,x19,[sp, #0x20]
016ac568  stp x29,x30,[sp, #0x30]
016ac56c  add x29,sp,#0x30
016ac570  adrp x1,0x174a000
016ac574  add x1,x1,#0x87c
016ac578  mov x19,x0
016ac57c  bl 0x0124ba40
016ac580  adrp x1,0x575d000
016ac584  add x1,x1,#0xa06
016ac588  mov x0,x19
016ac58c  str x19,[sp]
016ac590  bl 0x01251aa0
016ac594  mov w8,#0x1
016ac598  str w8,[sp, #0x8]
016ac59c  mov x0,sp
016ac5a0  bl 0x0174aa04
016ac5a4  adrp x1,0x5760000
016ac5a8  adrp x3,0x736d000
016ac5ac  add x1,x1,#0xa2e
016ac5b0  add x3,x3,#0x101
016ac5b4  add x0,sp,#0x10
016ac5b8  mov x2,sp
016ac5bc  bl 0x017b2fa8
016ac5c0  ldr x0,[sp, #0x10]
016ac5c4  mov w1,#0x10
016ac5c8  bl 0x0124cba0
016ac5cc  adrp x8,0x17b2000
016ac5d0  dup v0.2D,xzr
016ac5d4  add x8,x8,#0xf98
016ac5d8  mov v0.D[0x0],x8
016ac5dc  str q0,[x0]
016ac5e0  ldr x0,[sp, #0x10]
016ac5e4  adrp x1,0x17b3000
016ac5e8  add x1,x1,#0x36c
016ac5ec  mov w2,#0x1
016ac5f0  bl 0x0124ec90
016ac5f4  ldr x0,[sp, #0x10]
016ac5f8  mov w1,#0xffffffff
016ac5fc  bl 0x0124c0c0
016ac600  ldr x19,[sp, #0x10]
016ac604  orr w1,wzr,#0xfffffffb
016ac608  mov w2,#0x6e7
016ac60c  mov x0,x19
016ac610  bl 0x0124a650
016ac614  orr w1,wzr,#0xfffffffe
016ac618  mov x0,x19
016ac61c  bl 0x0124c0c0
016ac620  orr w1,wzr,#0xfffffffe
016ac624  mov x0,x19
016ac628  bl 0x0124e920
016ac62c  mov w20,w0
016ac630  adrp x1,0x575e000
016ac634  add x1,x1,#0x56d
016ac638  mov x0,x19
016ac63c  bl 0x0124f120
016ac640  orr w1,wzr,#0xfffffffe
016ac644  mov w2,#0x1
016ac648  mov x0,x19
016ac64c  bl 0x0124cfc0
016ac650  mov x0,x19
016ac654  mov w1,w20
016ac658  bl 0x0124e060
016ac65c  orr w1,wzr,#0xfffffffd
016ac660  mov x0,x19
016ac664  bl 0x0124c4d0
016ac668  ldr x19,[sp, #0x10]
016ac66c  orr w1,wzr,#0xfffffffd
016ac670  mov w2,#0x6e7
016ac674  mov x0,x19
016ac678  bl 0x0124a650
016ac67c  orr w1,wzr,#0xfffffffe
016ac680  mov x0,x19
016ac684  bl 0x0124c0c0
016ac688  orr w1,wzr,#0xfffffffe
016ac68c  mov x0,x19
016ac690  bl 0x0124e920
016ac694  mov w20,w0
016ac698  adrp x1,0x575e000
016ac69c  add x1,x1,#0x56d
016ac6a0  mov x0,x19
016ac6a4  bl 0x0124f120
016ac6a8  orr w1,wzr,#0xfffffffe
016ac6ac  mov w2,#0x1
016ac6b0  mov x0,x19
016ac6b4  bl 0x0124cfc0
016ac6b8  mov x0,x19
016ac6bc  mov w1,w20
016ac6c0  bl 0x0124e060
016ac6c4  orr w1,wzr,#0xfffffffd
016ac6c8  mov x0,x19
016ac6cc  bl 0x0124c4d0
016ac6d0  ldr x0,[sp, #0x10]
016ac6d4  mov w1,#0x10
016ac6d8  bl 0x0124cba0
016ac6dc  adrp x8,0x17b2000
016ac6e0  dup v0.2D,xzr
016ac6e4  add x8,x8,#0xfa0
016ac6e8  mov v0.D[0x0],x8
016ac6ec  str q0,[x0]
016ac6f0  ldr x0,[sp, #0x10]
016ac6f4  adrp x1,0x17b3000
016ac6f8  add x1,x1,#0x490
016ac6fc  mov w2,#0x1
016ac700  bl 0x0124ec90
016ac704  ldr x0,[sp, #0x10]
016ac708  mov w1,#0xffffffff
016ac70c  bl 0x0124c0c0
016ac710  ldr x19,[sp, #0x10]
016ac714  orr w1,wzr,#0xfffffffb
016ac718  mov w2,#0x6e7
016ac71c  mov x0,x19
016ac720  bl 0x0124a650
016ac724  orr w1,wzr,#0xfffffffe
016ac728  mov x0,x19
016ac72c  bl 0x0124c0c0
016ac730  orr w1,wzr,#0xfffffffe
016ac734  mov x0,x19
016ac738  bl 0x0124e920
016ac73c  mov w20,w0
016ac740  adrp x1,0x575e000
016ac744  add x1,x1,#0x578
016ac748  mov x0,x19
016ac74c  bl 0x0124f120
016ac750  orr w1,wzr,#0xfffffffe
016ac754  mov w2,#0x1
016ac758  mov x0,x19
016ac75c  bl 0x0124cfc0
016ac760  mov x0,x19
016ac764  mov w1,w20
016ac768  bl 0x0124e060
016ac76c  orr w1,wzr,#0xfffffffd
016ac770  mov x0,x19
016ac774  bl 0x0124c4d0
016ac778  ldr x19,[sp, #0x10]
016ac77c  orr w1,wzr,#0xfffffffd
016ac780  mov w2,#0x6e7
016ac784  mov x0,x19
016ac788  bl 0x0124a650
016ac78c  orr w1,wzr,#0xfffffffe
016ac790  mov x0,x19
016ac794  bl 0x0124c0c0
016ac798  orr w1,wzr,#0xfffffffe
016ac79c  mov x0,x19
016ac7a0  bl 0x0124e920
016ac7a4  mov w20,w0
016ac7a8  adrp x1,0x575e000
016ac7ac  add x1,x1,#0x578
016ac7b0  mov x0,x19
016ac7b4  bl 0x0124f120
016ac7b8  orr w1,wzr,#0xfffffffe
016ac7bc  mov w2,#0x1
016ac7c0  mov x0,x19
016ac7c4  bl 0x0124cfc0
016ac7c8  mov x0,x19
016ac7cc  mov w1,w20
016ac7d0  bl 0x0124e060
016ac7d4  orr w1,wzr,#0xfffffffd
016ac7d8  mov x0,x19
016ac7dc  bl 0x0124c4d0
016ac7e0  ldr w8,[sp, #0x18]
016ac7e4  ldr x0,[sp, #0x10]
016ac7e8  sub w8,w8,#0x3
016ac7ec  str w8,[sp, #0x18]
016ac7f0  orr w1,wzr,#0xfffffffc
016ac7f4  bl 0x0124c4d0
016ac7f8  ldr w8,[sp, #0x18]
016ac7fc  ldr x0,[sp, #0x10]
016ac800  str wzr,[sp, #0x18]
016ac804  cmp w8,#0x1
016ac808  b.lt 0x016ac82c
016ac80c  mvn w1,w8
016ac810  bl 0x0124c4d0
016ac814  ldr w8,[sp, #0x18]
016ac818  cmp w8,#0x1
016ac81c  b.lt 0x016ac82c
016ac820  ldr x0,[sp, #0x10]
016ac824  mvn w1,w8
016ac828  bl 0x0124c4d0
016ac82c  ldr w8,[sp, #0x8]
016ac830  cmp w8,#0x1
016ac834  b.lt 0x016ac844
016ac838  ldr x0,[sp]
016ac83c  mvn w1,w8
016ac840  bl 0x0124c4d0
016ac844  ldp x29,x30,[sp, #0x30]
016ac848  ldp x20,x19,[sp, #0x20]
016ac84c  add sp,sp,#0x40
016ac850  ret
