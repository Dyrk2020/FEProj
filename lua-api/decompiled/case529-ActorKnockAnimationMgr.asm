// ===== case529-ActorKnockAnimationMgr @ 016f9044 =====
// existing function case529-ActorKnockAnimationMgr
016f9044  sub sp,sp,#0x40
016f9048  str x19,[sp, #0x20]
016f904c  stp x29,x30,[sp, #0x30]
016f9050  add x29,sp,#0x30
016f9054  adrp x1,0x174a000
016f9058  add x1,x1,#0x87c
016f905c  mov x19,x0
016f9060  bl 0x0124ba40
016f9064  adrp x1,0x575d000
016f9068  add x1,x1,#0xa06
016f906c  mov x0,x19
016f9070  str x19,[sp]
016f9074  bl 0x01251aa0
016f9078  mov w8,#0x1
016f907c  str w8,[sp, #0x8]
016f9080  mov x0,sp
016f9084  bl 0x0174aa04
016f9088  adrp x1,0x5768000
016f908c  adrp x3,0x736d000
016f9090  add x1,x1,#0xadb
016f9094  add x3,x3,#0x101
016f9098  add x0,sp,#0x10
016f909c  mov x2,sp
016f90a0  bl 0x018af550
016f90a4  adrp x1,0x5768000
016f90a8  adrp x2,0x18af000
016f90ac  adrp x4,0x18af000
016f90b0  add x1,x1,#0xaf2
016f90b4  add x2,x2,#0x540
016f90b8  add x4,x4,#0x548
016f90bc  add x0,sp,#0x10
016f90c0  mov x3,xzr
016f90c4  mov x5,xzr
016f90c8  bl 0x018af358
016f90cc  mov x19,x0
016f90d0  ldr w8,[x19, #0x8]
016f90d4  ldr x0,[x19]
016f90d8  sub w8,w8,#0x3
016f90dc  str w8,[x19, #0x8]
016f90e0  orr w1,wzr,#0xfffffffc
016f90e4  bl 0x0124c4d0
016f90e8  ldr w8,[x19, #0x8]
016f90ec  ldr x0,[x19]
016f90f0  str wzr,[x19, #0x8]
016f90f4  cmp w8,#0x1
016f90f8  b.lt 0x016f9104
016f90fc  mvn w1,w8
016f9100  bl 0x0124c4d0
016f9104  ldr w8,[sp, #0x18]
016f9108  cmp w8,#0x1
016f910c  b.lt 0x016f911c
016f9110  ldr x0,[sp, #0x10]
016f9114  mvn w1,w8
016f9118  bl 0x0124c4d0
016f911c  ldr w8,[sp, #0x8]
016f9120  cmp w8,#0x1
016f9124  b.lt 0x016f9134
016f9128  ldr x0,[sp]
016f912c  mvn w1,w8
016f9130  bl 0x0124c4d0
016f9134  ldp x29,x30,[sp, #0x30]
016f9138  ldr x19,[sp, #0x20]
016f913c  add sp,sp,#0x40
016f9140  ret
