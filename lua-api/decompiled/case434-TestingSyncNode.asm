// ===== case434-TestingSyncNode @ 016e784c =====
// existing function case434-TestingSyncNode
016e784c  sub sp,sp,#0x40
016e7850  str x19,[sp, #0x20]
016e7854  stp x29,x30,[sp, #0x30]
016e7858  add x29,sp,#0x30
016e785c  adrp x1,0x174a000
016e7860  add x1,x1,#0x87c
016e7864  mov x19,x0
016e7868  bl 0x0124ba40
016e786c  adrp x1,0x575d000
016e7870  add x1,x1,#0xa06
016e7874  mov x0,x19
016e7878  str x19,[sp]
016e787c  bl 0x01251aa0
016e7880  mov w8,#0x1
016e7884  str w8,[sp, #0x8]
016e7888  mov x0,sp
016e788c  bl 0x0174aa04
016e7890  adrp x1,0x5766000
016e7894  adrp x3,0x736d000
016e7898  add x1,x1,#0x830
016e789c  add x3,x3,#0x101
016e78a0  add x0,sp,#0x10
016e78a4  mov x2,sp
016e78a8  bl 0x018642a8
016e78ac  adrp x1,0x5766000
016e78b0  adrp x2,0x1864000
016e78b4  adrp x4,0x1864000
016e78b8  add x1,x1,#0x840
016e78bc  add x2,x2,#0xa0
016e78c0  add x4,x4,#0xa8
016e78c4  add x0,sp,#0x10
016e78c8  mov x3,xzr
016e78cc  mov x5,xzr
016e78d0  bl 0x01863eb8
016e78d4  adrp x1,0x5766000
016e78d8  adrp x2,0x1864000
016e78dc  adrp x4,0x1864000
016e78e0  add x1,x1,#0x84a
016e78e4  add x2,x2,#0x298
016e78e8  add x4,x4,#0x2a0
016e78ec  mov x3,xzr
016e78f0  mov x5,xzr
016e78f4  bl 0x018640b0
016e78f8  mov x19,x0
016e78fc  ldr w8,[x19, #0x8]
016e7900  ldr x0,[x19]
016e7904  sub w8,w8,#0x3
016e7908  str w8,[x19, #0x8]
016e790c  orr w1,wzr,#0xfffffffc
016e7910  bl 0x0124c4d0
016e7914  ldr w8,[x19, #0x8]
016e7918  ldr x0,[x19]
016e791c  str wzr,[x19, #0x8]
016e7920  cmp w8,#0x1
016e7924  b.lt 0x016e7930
016e7928  mvn w1,w8
016e792c  bl 0x0124c4d0
016e7930  ldr w8,[sp, #0x18]
016e7934  cmp w8,#0x1
016e7938  b.lt 0x016e7948
016e793c  ldr x0,[sp, #0x10]
016e7940  mvn w1,w8
016e7944  bl 0x0124c4d0
016e7948  ldr w8,[sp, #0x8]
016e794c  cmp w8,#0x1
016e7950  b.lt 0x016e7960
016e7954  ldr x0,[sp]
016e7958  mvn w1,w8
016e795c  bl 0x0124c4d0
016e7960  ldp x29,x30,[sp, #0x30]
016e7964  ldr x19,[sp, #0x20]
016e7968  add sp,sp,#0x40
016e796c  ret
