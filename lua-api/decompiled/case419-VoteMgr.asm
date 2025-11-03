// ===== case419-VoteMgr @ 016e4f7c =====
// existing function case419-VoteMgr
016e4f7c  sub sp,sp,#0x40
016e4f80  stp x20,x19,[sp, #0x20]
016e4f84  stp x29,x30,[sp, #0x30]
016e4f88  add x29,sp,#0x30
016e4f8c  adrp x1,0x174a000
016e4f90  add x1,x1,#0x87c
016e4f94  mov x19,x0
016e4f98  bl 0x0124ba40
016e4f9c  adrp x1,0x575d000
016e4fa0  add x1,x1,#0xa06
016e4fa4  mov x0,x19
016e4fa8  str x19,[sp]
016e4fac  bl 0x01251aa0
016e4fb0  mov w8,#0x1
016e4fb4  str w8,[sp, #0x8]
016e4fb8  mov x0,sp
016e4fbc  bl 0x0174aa04
016e4fc0  adrp x1,0x5766000
016e4fc4  adrp x3,0x736d000
016e4fc8  add x1,x1,#0x49a
016e4fcc  add x3,x3,#0x101
016e4fd0  add x0,sp,#0x10
016e4fd4  mov x2,sp
016e4fd8  bl 0x0185c578
016e4fdc  ldr x0,[sp, #0x10]
016e4fe0  mov w1,#0x10
016e4fe4  bl 0x0124cba0
016e4fe8  adrp x8,0x185c000
016e4fec  dup v0.2D,xzr
016e4ff0  add x8,x8,#0x570
016e4ff4  mov v0.D[0x0],x8
016e4ff8  str q0,[x0]
016e4ffc  ldr x0,[sp, #0x10]
016e5000  adrp x1,0x185c000
016e5004  add x1,x1,#0x93c
016e5008  mov w2,#0x1
016e500c  bl 0x0124ec90
016e5010  ldr x0,[sp, #0x10]
016e5014  mov w1,#0xffffffff
016e5018  bl 0x0124c0c0
016e501c  ldr x19,[sp, #0x10]
016e5020  orr w1,wzr,#0xfffffffb
016e5024  mov w2,#0x6e7
016e5028  mov x0,x19
016e502c  bl 0x0124a650
016e5030  orr w1,wzr,#0xfffffffe
016e5034  mov x0,x19
016e5038  bl 0x0124c0c0
016e503c  orr w1,wzr,#0xfffffffe
016e5040  mov x0,x19
016e5044  bl 0x0124e920
016e5048  mov w20,w0
016e504c  adrp x1,0x5763000
016e5050  add x1,x1,#0x892
016e5054  mov x0,x19
016e5058  bl 0x0124f120
016e505c  orr w1,wzr,#0xfffffffe
016e5060  mov w2,#0x1
016e5064  mov x0,x19
016e5068  bl 0x0124cfc0
016e506c  mov x0,x19
016e5070  mov w1,w20
016e5074  bl 0x0124e060
016e5078  orr w1,wzr,#0xfffffffd
016e507c  mov x0,x19
016e5080  bl 0x0124c4d0
016e5084  ldr x19,[sp, #0x10]
016e5088  orr w1,wzr,#0xfffffffd
016e508c  mov w2,#0x6e7
016e5090  mov x0,x19
016e5094  bl 0x0124a650
016e5098  orr w1,wzr,#0xfffffffe
016e509c  mov x0,x19
016e50a0  bl 0x0124c0c0
016e50a4  orr w1,wzr,#0xfffffffe
016e50a8  mov x0,x19
016e50ac  bl 0x0124e920
016e50b0  mov w20,w0
016e50b4  adrp x1,0x5763000
016e50b8  add x1,x1,#0x892
016e50bc  mov x0,x19
016e50c0  bl 0x0124f120
016e50c4  orr w1,wzr,#0xfffffffe
016e50c8  mov w2,#0x1
016e50cc  mov x0,x19
016e50d0  bl 0x0124cfc0
016e50d4  mov x0,x19
016e50d8  mov w1,w20
016e50dc  bl 0x0124e060
016e50e0  orr w1,wzr,#0xfffffffd
016e50e4  mov x0,x19
016e50e8  bl 0x0124c4d0
016e50ec  ldr w8,[sp, #0x18]
016e50f0  ldr x0,[sp, #0x10]
016e50f4  sub w8,w8,#0x3
016e50f8  str w8,[sp, #0x18]
016e50fc  orr w1,wzr,#0xfffffffc
016e5100  bl 0x0124c4d0
016e5104  ldr w8,[sp, #0x18]
016e5108  ldr x0,[sp, #0x10]
016e510c  str wzr,[sp, #0x18]
016e5110  cmp w8,#0x1
016e5114  b.lt 0x016e5138
016e5118  mvn w1,w8
016e511c  bl 0x0124c4d0
016e5120  ldr w8,[sp, #0x18]
016e5124  cmp w8,#0x1
016e5128  b.lt 0x016e5138
016e512c  ldr x0,[sp, #0x10]
016e5130  mvn w1,w8
016e5134  bl 0x0124c4d0
016e5138  ldr w8,[sp, #0x8]
016e513c  cmp w8,#0x1
016e5140  b.lt 0x016e5150
016e5144  ldr x0,[sp]
016e5148  mvn w1,w8
016e514c  bl 0x0124c4d0
016e5150  ldp x29,x30,[sp, #0x30]
016e5154  ldp x20,x19,[sp, #0x20]
016e5158  add sp,sp,#0x40
016e515c  ret
