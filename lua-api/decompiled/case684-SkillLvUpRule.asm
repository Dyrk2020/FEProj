// ===== case684-SkillLvUpRule @ 0171a0b0 =====
// existing function case684-SkillLvUpRule
0171a0b0  sub sp,sp,#0x40
0171a0b4  str x19,[sp, #0x20]
0171a0b8  stp x29,x30,[sp, #0x30]
0171a0bc  add x29,sp,#0x30
0171a0c0  adrp x1,0x174a000
0171a0c4  add x1,x1,#0x87c
0171a0c8  mov x19,x0
0171a0cc  bl 0x0124ba40
0171a0d0  adrp x1,0x575d000
0171a0d4  add x1,x1,#0xa06
0171a0d8  mov x0,x19
0171a0dc  str x19,[sp]
0171a0e0  bl 0x01251aa0
0171a0e4  mov w8,#0x1
0171a0e8  str w8,[sp, #0x8]
0171a0ec  mov x0,sp
0171a0f0  bl 0x0174aa04
0171a0f4  adrp x1,0x574c000
0171a0f8  adrp x3,0x736d000
0171a0fc  add x1,x1,#0x946
0171a100  add x3,x3,#0x101
0171a104  add x0,sp,#0x10
0171a108  mov x2,sp
0171a10c  bl 0x0194b1c0
0171a110  adrp x1,0x5762000
0171a114  adrp x2,0x194b000
0171a118  adrp x4,0x194b000
0171a11c  add x1,x1,#0x8d5
0171a120  add x2,x2,#0x190
0171a124  add x4,x4,#0x198
0171a128  add x0,sp,#0x10
0171a12c  mov x3,xzr
0171a130  mov x5,xzr
0171a134  bl 0x0194afa8
0171a138  adrp x1,0x576d000
0171a13c  adrp x2,0x194b000
0171a140  adrp x4,0x194b000
0171a144  add x1,x1,#0x491
0171a148  add x2,x2,#0x1a0
0171a14c  add x4,x4,#0x1a8
0171a150  mov x3,xzr
0171a154  mov x5,xzr
0171a158  bl 0x0194afa8
0171a15c  adrp x1,0x576d000
0171a160  adrp x2,0x194b000
0171a164  adrp x4,0x194b000
0171a168  add x1,x1,#0x498
0171a16c  add x2,x2,#0x1b0
0171a170  add x4,x4,#0x1b8
0171a174  mov x3,xzr
0171a178  mov x5,xzr
0171a17c  bl 0x0194afa8
0171a180  mov x19,x0
0171a184  ldr w8,[x19, #0x8]
0171a188  ldr x0,[x19]
0171a18c  sub w8,w8,#0x3
0171a190  str w8,[x19, #0x8]
0171a194  orr w1,wzr,#0xfffffffc
0171a198  bl 0x0124c4d0
0171a19c  ldr w8,[x19, #0x8]
0171a1a0  ldr x0,[x19]
0171a1a4  str wzr,[x19, #0x8]
0171a1a8  cmp w8,#0x1
0171a1ac  b.lt 0x0171a1b8
0171a1b0  mvn w1,w8
0171a1b4  bl 0x0124c4d0
0171a1b8  ldr w8,[sp, #0x18]
0171a1bc  cmp w8,#0x1
0171a1c0  b.lt 0x0171a1d0
0171a1c4  ldr x0,[sp, #0x10]
0171a1c8  mvn w1,w8
0171a1cc  bl 0x0124c4d0
0171a1d0  ldr w8,[sp, #0x8]
0171a1d4  cmp w8,#0x1
0171a1d8  b.lt 0x0171a1e8
0171a1dc  ldr x0,[sp]
0171a1e0  mvn w1,w8
0171a1e4  bl 0x0124c4d0
0171a1e8  ldp x29,x30,[sp, #0x30]
0171a1ec  ldr x19,[sp, #0x20]
0171a1f0  add sp,sp,#0x40
0171a1f4  ret
