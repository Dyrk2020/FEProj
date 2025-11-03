// ===== case167-VirtualSkillResObject @ 016a9594 =====
// existing function case167-VirtualSkillResObject
016a9594  sub sp,sp,#0x40
016a9598  stp x20,x19,[sp, #0x20]
016a959c  stp x29,x30,[sp, #0x30]
016a95a0  add x29,sp,#0x30
016a95a4  adrp x1,0x174a000
016a95a8  add x1,x1,#0x87c
016a95ac  mov x19,x0
016a95b0  bl 0x0124ba40
016a95b4  adrp x1,0x575d000
016a95b8  add x1,x1,#0xa06
016a95bc  mov x0,x19
016a95c0  str x19,[sp]
016a95c4  bl 0x01251aa0
016a95c8  mov w8,#0x1
016a95cc  str w8,[sp, #0x8]
016a95d0  mov x0,sp
016a95d4  bl 0x0174aa04
016a95d8  adrp x1,0x5760000
016a95dc  adrp x3,0x736d000
016a95e0  add x1,x1,#0x5a3
016a95e4  add x3,x3,#0x101
016a95e8  add x0,sp,#0x10
016a95ec  mov x2,sp
016a95f0  bl 0x017aad04
016a95f4  ldr x0,[sp, #0x10]
016a95f8  mov w1,#0x10
016a95fc  bl 0x0124cba0
016a9600  adrp x8,0x17aa000
016a9604  dup v0.2D,xzr
016a9608  add x8,x8,#0xcfc
016a960c  mov v0.D[0x0],x8
016a9610  str q0,[x0]
016a9614  ldr x0,[sp, #0x10]
016a9618  adrp x1,0x17ab000
016a961c  add x1,x1,#0xc8
016a9620  mov w2,#0x1
016a9624  bl 0x0124ec90
016a9628  ldr x0,[sp, #0x10]
016a962c  mov w1,#0xffffffff
016a9630  bl 0x0124c0c0
016a9634  ldr x19,[sp, #0x10]
016a9638  orr w1,wzr,#0xfffffffb
016a963c  mov w2,#0x6e7
016a9640  mov x0,x19
016a9644  bl 0x0124a650
016a9648  orr w1,wzr,#0xfffffffe
016a964c  mov x0,x19
016a9650  bl 0x0124c0c0
016a9654  orr w1,wzr,#0xfffffffe
016a9658  mov x0,x19
016a965c  bl 0x0124e920
016a9660  mov w20,w0
016a9664  adrp x1,0x575e000
016a9668  add x1,x1,#0xfb2
016a966c  mov x0,x19
016a9670  bl 0x0124f120
016a9674  orr w1,wzr,#0xfffffffe
016a9678  mov w2,#0x1
016a967c  mov x0,x19
016a9680  bl 0x0124cfc0
016a9684  mov x0,x19
016a9688  mov w1,w20
016a968c  bl 0x0124e060
016a9690  orr w1,wzr,#0xfffffffd
016a9694  mov x0,x19
016a9698  bl 0x0124c4d0
016a969c  ldr x19,[sp, #0x10]
016a96a0  orr w1,wzr,#0xfffffffd
016a96a4  mov w2,#0x6e7
016a96a8  mov x0,x19
016a96ac  bl 0x0124a650
016a96b0  orr w1,wzr,#0xfffffffe
016a96b4  mov x0,x19
016a96b8  bl 0x0124c0c0
016a96bc  orr w1,wzr,#0xfffffffe
016a96c0  mov x0,x19
016a96c4  bl 0x0124e920
016a96c8  mov w20,w0
016a96cc  adrp x1,0x575e000
016a96d0  add x1,x1,#0xfb2
016a96d4  mov x0,x19
016a96d8  bl 0x0124f120
016a96dc  orr w1,wzr,#0xfffffffe
016a96e0  mov w2,#0x1
016a96e4  mov x0,x19
016a96e8  bl 0x0124cfc0
016a96ec  mov x0,x19
016a96f0  mov w1,w20
016a96f4  bl 0x0124e060
016a96f8  orr w1,wzr,#0xfffffffd
016a96fc  mov x0,x19
016a9700  bl 0x0124c4d0
016a9704  ldr w8,[sp, #0x18]
016a9708  ldr x0,[sp, #0x10]
016a970c  sub w8,w8,#0x3
016a9710  str w8,[sp, #0x18]
016a9714  orr w1,wzr,#0xfffffffc
016a9718  bl 0x0124c4d0
016a971c  ldr w8,[sp, #0x18]
016a9720  ldr x0,[sp, #0x10]
016a9724  str wzr,[sp, #0x18]
016a9728  cmp w8,#0x1
016a972c  b.lt 0x016a9750
016a9730  mvn w1,w8
016a9734  bl 0x0124c4d0
016a9738  ldr w8,[sp, #0x18]
016a973c  cmp w8,#0x1
016a9740  b.lt 0x016a9750
016a9744  ldr x0,[sp, #0x10]
016a9748  mvn w1,w8
016a974c  bl 0x0124c4d0
016a9750  ldr w8,[sp, #0x8]
016a9754  cmp w8,#0x1
016a9758  b.lt 0x016a9768
016a975c  ldr x0,[sp]
016a9760  mvn w1,w8
016a9764  bl 0x0124c4d0
016a9768  ldp x29,x30,[sp, #0x30]
016a976c  ldp x20,x19,[sp, #0x20]
016a9770  add sp,sp,#0x40
016a9774  ret
