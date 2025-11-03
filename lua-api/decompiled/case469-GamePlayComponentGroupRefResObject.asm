// ===== case469-GamePlayComponentGroupRefResObject @ 016ed554 =====
// existing function case469-GamePlayComponentGroupRefResObject
016ed554  sub sp,sp,#0x40
016ed558  stp x20,x19,[sp, #0x20]
016ed55c  stp x29,x30,[sp, #0x30]
016ed560  add x29,sp,#0x30
016ed564  adrp x1,0x174a000
016ed568  add x1,x1,#0x87c
016ed56c  mov x19,x0
016ed570  bl 0x0124ba40
016ed574  adrp x1,0x575d000
016ed578  add x1,x1,#0xa06
016ed57c  mov x0,x19
016ed580  str x19,[sp]
016ed584  bl 0x01251aa0
016ed588  mov w8,#0x1
016ed58c  str w8,[sp, #0x8]
016ed590  mov x0,sp
016ed594  bl 0x0174aa04
016ed598  adrp x1,0x5767000
016ed59c  adrp x3,0x736d000
016ed5a0  add x1,x1,#0x118
016ed5a4  add x3,x3,#0x101
016ed5a8  add x0,sp,#0x10
016ed5ac  mov x2,sp
016ed5b0  bl 0x01877d24
016ed5b4  ldr x0,[sp, #0x10]
016ed5b8  mov w1,#0x10
016ed5bc  bl 0x0124cba0
016ed5c0  adrp x8,0x1877000
016ed5c4  dup v0.2D,xzr
016ed5c8  add x8,x8,#0xd1c
016ed5cc  mov v0.D[0x0],x8
016ed5d0  str q0,[x0]
016ed5d4  ldr x0,[sp, #0x10]
016ed5d8  adrp x1,0x1878000
016ed5dc  add x1,x1,#0xe8
016ed5e0  mov w2,#0x1
016ed5e4  bl 0x0124ec90
016ed5e8  ldr x0,[sp, #0x10]
016ed5ec  mov w1,#0xffffffff
016ed5f0  bl 0x0124c0c0
016ed5f4  ldr x19,[sp, #0x10]
016ed5f8  orr w1,wzr,#0xfffffffb
016ed5fc  mov w2,#0x6e7
016ed600  mov x0,x19
016ed604  bl 0x0124a650
016ed608  orr w1,wzr,#0xfffffffe
016ed60c  mov x0,x19
016ed610  bl 0x0124c0c0
016ed614  orr w1,wzr,#0xfffffffe
016ed618  mov x0,x19
016ed61c  bl 0x0124e920
016ed620  mov w20,w0
016ed624  adrp x1,0x5767000
016ed628  add x1,x1,#0x13b
016ed62c  mov x0,x19
016ed630  bl 0x0124f120
016ed634  orr w1,wzr,#0xfffffffe
016ed638  mov w2,#0x1
016ed63c  mov x0,x19
016ed640  bl 0x0124cfc0
016ed644  mov x0,x19
016ed648  mov w1,w20
016ed64c  bl 0x0124e060
016ed650  orr w1,wzr,#0xfffffffd
016ed654  mov x0,x19
016ed658  bl 0x0124c4d0
016ed65c  ldr x19,[sp, #0x10]
016ed660  orr w1,wzr,#0xfffffffd
016ed664  mov w2,#0x6e7
016ed668  mov x0,x19
016ed66c  bl 0x0124a650
016ed670  orr w1,wzr,#0xfffffffe
016ed674  mov x0,x19
016ed678  bl 0x0124c0c0
016ed67c  orr w1,wzr,#0xfffffffe
016ed680  mov x0,x19
016ed684  bl 0x0124e920
016ed688  mov w20,w0
016ed68c  adrp x1,0x5767000
016ed690  add x1,x1,#0x13b
016ed694  mov x0,x19
016ed698  bl 0x0124f120
016ed69c  orr w1,wzr,#0xfffffffe
016ed6a0  mov w2,#0x1
016ed6a4  mov x0,x19
016ed6a8  bl 0x0124cfc0
016ed6ac  mov x0,x19
016ed6b0  mov w1,w20
016ed6b4  bl 0x0124e060
016ed6b8  orr w1,wzr,#0xfffffffd
016ed6bc  mov x0,x19
016ed6c0  bl 0x0124c4d0
016ed6c4  ldr w8,[sp, #0x18]
016ed6c8  ldr x0,[sp, #0x10]
016ed6cc  sub w8,w8,#0x3
016ed6d0  str w8,[sp, #0x18]
016ed6d4  orr w1,wzr,#0xfffffffc
016ed6d8  bl 0x0124c4d0
016ed6dc  ldr w8,[sp, #0x18]
016ed6e0  ldr x0,[sp, #0x10]
016ed6e4  str wzr,[sp, #0x18]
016ed6e8  cmp w8,#0x1
016ed6ec  b.lt 0x016ed710
016ed6f0  mvn w1,w8
016ed6f4  bl 0x0124c4d0
016ed6f8  ldr w8,[sp, #0x18]
016ed6fc  cmp w8,#0x1
016ed700  b.lt 0x016ed710
016ed704  ldr x0,[sp, #0x10]
016ed708  mvn w1,w8
016ed70c  bl 0x0124c4d0
016ed710  ldr w8,[sp, #0x8]
016ed714  cmp w8,#0x1
016ed718  b.lt 0x016ed728
016ed71c  ldr x0,[sp]
016ed720  mvn w1,w8
016ed724  bl 0x0124c4d0
016ed728  ldp x29,x30,[sp, #0x30]
016ed72c  ldp x20,x19,[sp, #0x20]
016ed730  add sp,sp,#0x40
016ed734  ret
