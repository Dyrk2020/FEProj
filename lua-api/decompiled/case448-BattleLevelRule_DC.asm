// ===== case448-BattleLevelRule_DC @ 016e9498 =====
// existing function case448-BattleLevelRule_DC
016e9498  sub sp,sp,#0x40
016e949c  stp x20,x19,[sp, #0x20]
016e94a0  stp x29,x30,[sp, #0x30]
016e94a4  add x29,sp,#0x30
016e94a8  adrp x1,0x174a000
016e94ac  add x1,x1,#0x87c
016e94b0  mov x19,x0
016e94b4  bl 0x0124ba40
016e94b8  adrp x1,0x575d000
016e94bc  add x1,x1,#0xa06
016e94c0  mov x0,x19
016e94c4  str x19,[sp]
016e94c8  bl 0x01251aa0
016e94cc  mov w8,#0x1
016e94d0  str w8,[sp, #0x8]
016e94d4  mov x0,sp
016e94d8  bl 0x0174aa04
016e94dc  adrp x1,0x5766000
016e94e0  adrp x3,0x736d000
016e94e4  add x1,x1,#0xa03
016e94e8  add x3,x3,#0x101
016e94ec  add x0,sp,#0x10
016e94f0  mov x2,sp
016e94f4  bl 0x0186c6f0
016e94f8  ldr x0,[sp, #0x10]
016e94fc  mov w1,#0x10
016e9500  bl 0x0124cba0
016e9504  adrp x8,0x186c000
016e9508  dup v0.2D,xzr
016e950c  add x8,x8,#0x6e8
016e9510  mov v0.D[0x0],x8
016e9514  str q0,[x0]
016e9518  ldr x0,[sp, #0x10]
016e951c  adrp x1,0x186c000
016e9520  add x1,x1,#0xab4
016e9524  mov w2,#0x1
016e9528  bl 0x0124ec90
016e952c  ldr x0,[sp, #0x10]
016e9530  mov w1,#0xffffffff
016e9534  bl 0x0124c0c0
016e9538  ldr x19,[sp, #0x10]
016e953c  orr w1,wzr,#0xfffffffb
016e9540  mov w2,#0x6e7
016e9544  mov x0,x19
016e9548  bl 0x0124a650
016e954c  orr w1,wzr,#0xfffffffe
016e9550  mov x0,x19
016e9554  bl 0x0124c0c0
016e9558  orr w1,wzr,#0xfffffffe
016e955c  mov x0,x19
016e9560  bl 0x0124e920
016e9564  mov w20,w0
016e9568  adrp x1,0x5766000
016e956c  add x1,x1,#0xa16
016e9570  mov x0,x19
016e9574  bl 0x0124f120
016e9578  orr w1,wzr,#0xfffffffe
016e957c  mov w2,#0x1
016e9580  mov x0,x19
016e9584  bl 0x0124cfc0
016e9588  mov x0,x19
016e958c  mov w1,w20
016e9590  bl 0x0124e060
016e9594  orr w1,wzr,#0xfffffffd
016e9598  mov x0,x19
016e959c  bl 0x0124c4d0
016e95a0  ldr x19,[sp, #0x10]
016e95a4  orr w1,wzr,#0xfffffffd
016e95a8  mov w2,#0x6e7
016e95ac  mov x0,x19
016e95b0  bl 0x0124a650
016e95b4  orr w1,wzr,#0xfffffffe
016e95b8  mov x0,x19
016e95bc  bl 0x0124c0c0
016e95c0  orr w1,wzr,#0xfffffffe
016e95c4  mov x0,x19
016e95c8  bl 0x0124e920
016e95cc  mov w20,w0
016e95d0  adrp x1,0x5766000
016e95d4  add x1,x1,#0xa16
016e95d8  mov x0,x19
016e95dc  bl 0x0124f120
016e95e0  orr w1,wzr,#0xfffffffe
016e95e4  mov w2,#0x1
016e95e8  mov x0,x19
016e95ec  bl 0x0124cfc0
016e95f0  mov x0,x19
016e95f4  mov w1,w20
016e95f8  bl 0x0124e060
016e95fc  orr w1,wzr,#0xfffffffd
016e9600  mov x0,x19
016e9604  bl 0x0124c4d0
016e9608  ldr w8,[sp, #0x18]
016e960c  ldr x0,[sp, #0x10]
016e9610  sub w8,w8,#0x3
016e9614  str w8,[sp, #0x18]
016e9618  orr w1,wzr,#0xfffffffc
016e961c  bl 0x0124c4d0
016e9620  ldr w8,[sp, #0x18]
016e9624  ldr x0,[sp, #0x10]
016e9628  str wzr,[sp, #0x18]
016e962c  cmp w8,#0x1
016e9630  b.lt 0x016e9654
016e9634  mvn w1,w8
016e9638  bl 0x0124c4d0
016e963c  ldr w8,[sp, #0x18]
016e9640  cmp w8,#0x1
016e9644  b.lt 0x016e9654
016e9648  ldr x0,[sp, #0x10]
016e964c  mvn w1,w8
016e9650  bl 0x0124c4d0
016e9654  ldr w8,[sp, #0x8]
016e9658  cmp w8,#0x1
016e965c  b.lt 0x016e966c
016e9660  ldr x0,[sp]
016e9664  mvn w1,w8
016e9668  bl 0x0124c4d0
016e966c  ldp x29,x30,[sp, #0x30]
016e9670  ldp x20,x19,[sp, #0x20]
016e9674  add sp,sp,#0x40
016e9678  ret
