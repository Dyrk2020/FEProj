// ===== case552-GemSkillMgr @ 016fcf54 =====
// existing function case552-GemSkillMgr
016fcf54  sub sp,sp,#0x40
016fcf58  stp x20,x19,[sp, #0x20]
016fcf5c  stp x29,x30,[sp, #0x30]
016fcf60  add x29,sp,#0x30
016fcf64  adrp x1,0x174a000
016fcf68  add x1,x1,#0x87c
016fcf6c  mov x19,x0
016fcf70  bl 0x0124ba40
016fcf74  adrp x1,0x575d000
016fcf78  add x1,x1,#0xa06
016fcf7c  mov x0,x19
016fcf80  str x19,[sp]
016fcf84  bl 0x01251aa0
016fcf88  mov w8,#0x1
016fcf8c  str w8,[sp, #0x8]
016fcf90  mov x0,sp
016fcf94  bl 0x0174aa04
016fcf98  adrp x1,0x5769000
016fcf9c  adrp x3,0x736d000
016fcfa0  add x1,x1,#0x390
016fcfa4  add x3,x3,#0x101
016fcfa8  add x0,sp,#0x10
016fcfac  mov x2,sp
016fcfb0  bl 0x018c3ebc
016fcfb4  ldr x0,[sp, #0x10]
016fcfb8  mov w1,#0x10
016fcfbc  bl 0x0124cba0
016fcfc0  adrp x8,0x18c3000
016fcfc4  dup v0.2D,xzr
016fcfc8  add x8,x8,#0xeb4
016fcfcc  mov v0.D[0x0],x8
016fcfd0  str q0,[x0]
016fcfd4  ldr x0,[sp, #0x10]
016fcfd8  adrp x1,0x18c4000
016fcfdc  add x1,x1,#0x280
016fcfe0  mov w2,#0x1
016fcfe4  bl 0x0124ec90
016fcfe8  ldr x0,[sp, #0x10]
016fcfec  mov w1,#0xffffffff
016fcff0  bl 0x0124c0c0
016fcff4  ldr x19,[sp, #0x10]
016fcff8  orr w1,wzr,#0xfffffffb
016fcffc  mov w2,#0x6e7
016fd000  mov x0,x19
016fd004  bl 0x0124a650
016fd008  orr w1,wzr,#0xfffffffe
016fd00c  mov x0,x19
016fd010  bl 0x0124c0c0
016fd014  orr w1,wzr,#0xfffffffe
016fd018  mov x0,x19
016fd01c  bl 0x0124e920
016fd020  mov w20,w0
016fd024  adrp x1,0x5769000
016fd028  add x1,x1,#0x39c
016fd02c  mov x0,x19
016fd030  bl 0x0124f120
016fd034  orr w1,wzr,#0xfffffffe
016fd038  mov w2,#0x1
016fd03c  mov x0,x19
016fd040  bl 0x0124cfc0
016fd044  mov x0,x19
016fd048  mov w1,w20
016fd04c  bl 0x0124e060
016fd050  orr w1,wzr,#0xfffffffd
016fd054  mov x0,x19
016fd058  bl 0x0124c4d0
016fd05c  ldr x19,[sp, #0x10]
016fd060  orr w1,wzr,#0xfffffffd
016fd064  mov w2,#0x6e7
016fd068  mov x0,x19
016fd06c  bl 0x0124a650
016fd070  orr w1,wzr,#0xfffffffe
016fd074  mov x0,x19
016fd078  bl 0x0124c0c0
016fd07c  orr w1,wzr,#0xfffffffe
016fd080  mov x0,x19
016fd084  bl 0x0124e920
016fd088  mov w20,w0
016fd08c  adrp x1,0x5769000
016fd090  add x1,x1,#0x39c
016fd094  mov x0,x19
016fd098  bl 0x0124f120
016fd09c  orr w1,wzr,#0xfffffffe
016fd0a0  mov w2,#0x1
016fd0a4  mov x0,x19
016fd0a8  bl 0x0124cfc0
016fd0ac  mov x0,x19
016fd0b0  mov w1,w20
016fd0b4  bl 0x0124e060
016fd0b8  orr w1,wzr,#0xfffffffd
016fd0bc  mov x0,x19
016fd0c0  bl 0x0124c4d0
016fd0c4  ldr w8,[sp, #0x18]
016fd0c8  ldr x0,[sp, #0x10]
016fd0cc  sub w8,w8,#0x3
016fd0d0  str w8,[sp, #0x18]
016fd0d4  orr w1,wzr,#0xfffffffc
016fd0d8  bl 0x0124c4d0
016fd0dc  ldr w8,[sp, #0x18]
016fd0e0  ldr x0,[sp, #0x10]
016fd0e4  str wzr,[sp, #0x18]
016fd0e8  cmp w8,#0x1
016fd0ec  b.lt 0x016fd110
016fd0f0  mvn w1,w8
016fd0f4  bl 0x0124c4d0
016fd0f8  ldr w8,[sp, #0x18]
016fd0fc  cmp w8,#0x1
016fd100  b.lt 0x016fd110
016fd104  ldr x0,[sp, #0x10]
016fd108  mvn w1,w8
016fd10c  bl 0x0124c4d0
016fd110  ldr w8,[sp, #0x8]
016fd114  cmp w8,#0x1
016fd118  b.lt 0x016fd128
016fd11c  ldr x0,[sp]
016fd120  mvn w1,w8
016fd124  bl 0x0124c4d0
016fd128  ldp x29,x30,[sp, #0x30]
016fd12c  ldp x20,x19,[sp, #0x20]
016fd130  add sp,sp,#0x40
016fd134  ret
