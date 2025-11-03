// ===== case559-ActorComponentFSM @ 016ff020 =====
// existing function case559-ActorComponentFSM
016ff020  sub sp,sp,#0x40
016ff024  str x19,[sp, #0x20]
016ff028  stp x29,x30,[sp, #0x30]
016ff02c  add x29,sp,#0x30
016ff030  adrp x1,0x174a000
016ff034  add x1,x1,#0x87c
016ff038  mov x19,x0
016ff03c  bl 0x0124ba40
016ff040  adrp x1,0x575d000
016ff044  add x1,x1,#0xa06
016ff048  mov x0,x19
016ff04c  str x19,[sp]
016ff050  bl 0x01251aa0
016ff054  mov w8,#0x1
016ff058  str w8,[sp, #0x8]
016ff05c  mov x0,sp
016ff060  bl 0x0174aa04
016ff064  adrp x1,0x5769000
016ff068  adrp x3,0x736d000
016ff06c  add x1,x1,#0x5dd
016ff070  add x3,x3,#0x101
016ff074  add x0,sp,#0x10
016ff078  mov x2,sp
016ff07c  bl 0x018cbc14
016ff080  adrp x1,0x5766000
016ff084  adrp x2,0x18cb000
016ff088  add x1,x1,#0x962
016ff08c  add x2,x2,#0x7a0
016ff090  add x0,sp,#0x10
016ff094  mov x3,xzr
016ff098  mov x4,xzr
016ff09c  mov x5,xzr
016ff0a0  bl 0x018cb5b8
016ff0a4  adrp x1,0x5769000
016ff0a8  adrp x2,0x18cb000
016ff0ac  add x1,x1,#0x5ef
016ff0b0  add x2,x2,#0x7a8
016ff0b4  mov x3,xzr
016ff0b8  mov x4,xzr
016ff0bc  mov x5,xzr
016ff0c0  bl 0x018cb5b8
016ff0c4  adrp x1,0x5769000
016ff0c8  adrp x2,0x18cb000
016ff0cc  add x1,x1,#0x5f9
016ff0d0  add x2,x2,#0x7b0
016ff0d4  mov x3,xzr
016ff0d8  mov x4,xzr
016ff0dc  mov x5,xzr
016ff0e0  bl 0x018cb5b8
016ff0e4  adrp x1,0x5769000
016ff0e8  adrp x2,0x18cb000
016ff0ec  adrp x4,0x18cb000
016ff0f0  add x1,x1,#0x607
016ff0f4  add x2,x2,#0x9a0
016ff0f8  add x4,x4,#0x9a8
016ff0fc  mov x3,xzr
016ff100  mov x5,xzr
016ff104  bl 0x018cb7b8
016ff108  adrp x1,0x5769000
016ff10c  adrp x2,0x18cb000
016ff110  adrp x4,0x18cb000
016ff114  add x1,x1,#0x611
016ff118  add x2,x2,#0x9c4
016ff11c  add x4,x4,#0x9cc
016ff120  mov x3,xzr
016ff124  mov x5,xzr
016ff128  bl 0x018cb7b8
016ff12c  adrp x1,0x5769000
016ff130  adrp x2,0x18cb000
016ff134  adrp x4,0x18cb000
016ff138  add x1,x1,#0x61e
016ff13c  add x2,x2,#0xbd0
016ff140  add x4,x4,#0xbd8
016ff144  mov x3,xzr
016ff148  mov x5,xzr
016ff14c  bl 0x018cb9e8
016ff150  adrp x1,0x5769000
016ff154  adrp x2,0x18cb000
016ff158  adrp x4,0x18cb000
016ff15c  add x1,x1,#0x633
016ff160  add x2,x2,#0xbe0
016ff164  add x4,x4,#0xbe8
016ff168  mov x3,xzr
016ff16c  mov x5,xzr
016ff170  bl 0x018cb9e8
016ff174  adrp x1,0x5769000
016ff178  adrp x2,0x18cb000
016ff17c  adrp x4,0x18cb000
016ff180  add x1,x1,#0x648
016ff184  add x2,x2,#0xc04
016ff188  add x4,x4,#0xc0c
016ff18c  mov x3,xzr
016ff190  mov x5,xzr
016ff194  bl 0x018cb9e8
016ff198  mov x19,x0
016ff19c  ldr w8,[x19, #0x8]
016ff1a0  ldr x0,[x19]
016ff1a4  sub w8,w8,#0x3
016ff1a8  str w8,[x19, #0x8]
016ff1ac  orr w1,wzr,#0xfffffffc
016ff1b0  bl 0x0124c4d0
016ff1b4  ldr w8,[x19, #0x8]
016ff1b8  ldr x0,[x19]
016ff1bc  str wzr,[x19, #0x8]
016ff1c0  cmp w8,#0x1
016ff1c4  b.lt 0x016ff1d0
016ff1c8  mvn w1,w8
016ff1cc  bl 0x0124c4d0
016ff1d0  ldr w8,[sp, #0x18]
016ff1d4  cmp w8,#0x1
016ff1d8  b.lt 0x016ff1e8
016ff1dc  ldr x0,[sp, #0x10]
016ff1e0  mvn w1,w8
016ff1e4  bl 0x0124c4d0
016ff1e8  ldr w8,[sp, #0x8]
016ff1ec  cmp w8,#0x1
016ff1f0  b.lt 0x016ff200
016ff1f4  ldr x0,[sp]
016ff1f8  mvn w1,w8
016ff1fc  bl 0x0124c4d0
016ff200  ldp x29,x30,[sp, #0x30]
016ff204  ldr x19,[sp, #0x20]
016ff208  add sp,sp,#0x40
016ff20c  ret
