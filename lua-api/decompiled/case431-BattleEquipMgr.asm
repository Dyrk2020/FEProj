// ===== case431-BattleEquipMgr @ 016e6f54 =====
// existing function case431-BattleEquipMgr
016e6f54  sub sp,sp,#0x40
016e6f58  stp x20,x19,[sp, #0x20]
016e6f5c  stp x29,x30,[sp, #0x30]
016e6f60  add x29,sp,#0x30
016e6f64  adrp x1,0x174a000
016e6f68  add x1,x1,#0x87c
016e6f6c  mov x19,x0
016e6f70  bl 0x0124ba40
016e6f74  adrp x1,0x575d000
016e6f78  add x1,x1,#0xa06
016e6f7c  mov x0,x19
016e6f80  str x19,[sp]
016e6f84  bl 0x01251aa0
016e6f88  mov w8,#0x1
016e6f8c  str w8,[sp, #0x8]
016e6f90  mov x0,sp
016e6f94  bl 0x0174aa04
016e6f98  adrp x1,0x5766000
016e6f9c  adrp x3,0x736d000
016e6fa0  add x1,x1,#0x7bc
016e6fa4  add x3,x3,#0x101
016e6fa8  add x0,sp,#0x10
016e6fac  mov x2,sp
016e6fb0  bl 0x01862da8
016e6fb4  ldr x0,[sp, #0x10]
016e6fb8  mov w1,#0x10
016e6fbc  bl 0x0124cba0
016e6fc0  adrp x8,0x1862000
016e6fc4  dup v0.2D,xzr
016e6fc8  add x8,x8,#0xd90
016e6fcc  mov v0.D[0x0],x8
016e6fd0  str q0,[x0]
016e6fd4  ldr x0,[sp, #0x10]
016e6fd8  adrp x1,0x1863000
016e6fdc  add x1,x1,#0x16c
016e6fe0  mov w2,#0x1
016e6fe4  bl 0x0124ec90
016e6fe8  ldr x0,[sp, #0x10]
016e6fec  mov w1,#0xffffffff
016e6ff0  bl 0x0124c0c0
016e6ff4  ldr x19,[sp, #0x10]
016e6ff8  orr w1,wzr,#0xfffffffb
016e6ffc  mov w2,#0x6e7
016e7000  mov x0,x19
016e7004  bl 0x0124a650
016e7008  orr w1,wzr,#0xfffffffe
016e700c  mov x0,x19
016e7010  bl 0x0124c0c0
016e7014  orr w1,wzr,#0xfffffffe
016e7018  mov x0,x19
016e701c  bl 0x0124e920
016e7020  mov w20,w0
016e7024  adrp x1,0x5763000
016e7028  add x1,x1,#0x892
016e702c  mov x0,x19
016e7030  bl 0x0124f120
016e7034  orr w1,wzr,#0xfffffffe
016e7038  mov w2,#0x1
016e703c  mov x0,x19
016e7040  bl 0x0124cfc0
016e7044  mov x0,x19
016e7048  mov w1,w20
016e704c  bl 0x0124e060
016e7050  orr w1,wzr,#0xfffffffd
016e7054  mov x0,x19
016e7058  bl 0x0124c4d0
016e705c  ldr x19,[sp, #0x10]
016e7060  orr w1,wzr,#0xfffffffd
016e7064  mov w2,#0x6e7
016e7068  mov x0,x19
016e706c  bl 0x0124a650
016e7070  orr w1,wzr,#0xfffffffe
016e7074  mov x0,x19
016e7078  bl 0x0124c0c0
016e707c  orr w1,wzr,#0xfffffffe
016e7080  mov x0,x19
016e7084  bl 0x0124e920
016e7088  mov w20,w0
016e708c  adrp x1,0x5763000
016e7090  add x1,x1,#0x892
016e7094  mov x0,x19
016e7098  bl 0x0124f120
016e709c  orr w1,wzr,#0xfffffffe
016e70a0  mov w2,#0x1
016e70a4  mov x0,x19
016e70a8  bl 0x0124cfc0
016e70ac  mov x0,x19
016e70b0  mov w1,w20
016e70b4  bl 0x0124e060
016e70b8  orr w1,wzr,#0xfffffffd
016e70bc  mov x0,x19
016e70c0  bl 0x0124c4d0
016e70c4  ldr x0,[sp, #0x10]
016e70c8  mov w1,#0x10
016e70cc  bl 0x0124cba0
016e70d0  adrp x8,0x1862000
016e70d4  dup v0.2D,xzr
016e70d8  add x8,x8,#0xd98
016e70dc  mov v0.D[0x0],x8
016e70e0  str q0,[x0]
016e70e4  ldr x0,[sp, #0x10]
016e70e8  adrp x1,0x1863000
016e70ec  add x1,x1,#0x290
016e70f0  mov w2,#0x1
016e70f4  bl 0x0124ec90
016e70f8  ldr x0,[sp, #0x10]
016e70fc  mov w1,#0xffffffff
016e7100  bl 0x0124c0c0
016e7104  ldr x19,[sp, #0x10]
016e7108  orr w1,wzr,#0xfffffffb
016e710c  mov w2,#0x6e7
016e7110  mov x0,x19
016e7114  bl 0x0124a650
016e7118  orr w1,wzr,#0xfffffffe
016e711c  mov x0,x19
016e7120  bl 0x0124c0c0
016e7124  orr w1,wzr,#0xfffffffe
016e7128  mov x0,x19
016e712c  bl 0x0124e920
016e7130  mov w20,w0
016e7134  adrp x1,0x5766000
016e7138  add x1,x1,#0x7cb
016e713c  mov x0,x19
016e7140  bl 0x0124f120
016e7144  orr w1,wzr,#0xfffffffe
016e7148  mov w2,#0x1
016e714c  mov x0,x19
016e7150  bl 0x0124cfc0
016e7154  mov x0,x19
016e7158  mov w1,w20
016e715c  bl 0x0124e060
016e7160  orr w1,wzr,#0xfffffffd
016e7164  mov x0,x19
016e7168  bl 0x0124c4d0
016e716c  ldr x19,[sp, #0x10]
016e7170  orr w1,wzr,#0xfffffffd
016e7174  mov w2,#0x6e7
016e7178  mov x0,x19
016e717c  bl 0x0124a650
016e7180  orr w1,wzr,#0xfffffffe
016e7184  mov x0,x19
016e7188  bl 0x0124c0c0
016e718c  orr w1,wzr,#0xfffffffe
016e7190  mov x0,x19
016e7194  bl 0x0124e920
016e7198  mov w20,w0
016e719c  adrp x1,0x5766000
016e71a0  add x1,x1,#0x7cb
016e71a4  mov x0,x19
016e71a8  bl 0x0124f120
016e71ac  orr w1,wzr,#0xfffffffe
016e71b0  mov w2,#0x1
016e71b4  mov x0,x19
016e71b8  bl 0x0124cfc0
016e71bc  mov x0,x19
016e71c0  mov w1,w20
016e71c4  bl 0x0124e060
016e71c8  orr w1,wzr,#0xfffffffd
016e71cc  mov x0,x19
016e71d0  bl 0x0124c4d0
016e71d4  ldr x0,[sp, #0x10]
016e71d8  mov w1,#0x10
016e71dc  bl 0x0124cba0
016e71e0  adrp x8,0x1862000
016e71e4  dup v0.2D,xzr
016e71e8  add x8,x8,#0xda0
016e71ec  mov v0.D[0x0],x8
016e71f0  str q0,[x0]
016e71f4  ldr x0,[sp, #0x10]
016e71f8  adrp x1,0x1863000
016e71fc  add x1,x1,#0x3b4
016e7200  mov w2,#0x1
016e7204  bl 0x0124ec90
016e7208  ldr x0,[sp, #0x10]
016e720c  mov w1,#0xffffffff
016e7210  bl 0x0124c0c0
016e7214  ldr x19,[sp, #0x10]
016e7218  orr w1,wzr,#0xfffffffb
016e721c  mov w2,#0x6e7
016e7220  mov x0,x19
016e7224  bl 0x0124a650
016e7228  orr w1,wzr,#0xfffffffe
016e722c  mov x0,x19
016e7230  bl 0x0124c0c0
016e7234  orr w1,wzr,#0xfffffffe
016e7238  mov x0,x19
016e723c  bl 0x0124e920
016e7240  mov w20,w0
016e7244  adrp x1,0x5766000
016e7248  add x1,x1,#0x7df
016e724c  mov x0,x19
016e7250  bl 0x0124f120
016e7254  orr w1,wzr,#0xfffffffe
016e7258  mov w2,#0x1
016e725c  mov x0,x19
016e7260  bl 0x0124cfc0
016e7264  mov x0,x19
016e7268  mov w1,w20
016e726c  bl 0x0124e060
016e7270  orr w1,wzr,#0xfffffffd
016e7274  mov x0,x19
016e7278  bl 0x0124c4d0
016e727c  ldr x19,[sp, #0x10]
016e7280  orr w1,wzr,#0xfffffffd
016e7284  mov w2,#0x6e7
016e7288  mov x0,x19
016e728c  bl 0x0124a650
016e7290  orr w1,wzr,#0xfffffffe
016e7294  mov x0,x19
016e7298  bl 0x0124c0c0
016e729c  orr w1,wzr,#0xfffffffe
016e72a0  mov x0,x19
016e72a4  bl 0x0124e920
016e72a8  mov w20,w0
016e72ac  adrp x1,0x5766000
016e72b0  add x1,x1,#0x7df
016e72b4  mov x0,x19
016e72b8  bl 0x0124f120
016e72bc  orr w1,wzr,#0xfffffffe
016e72c0  mov w2,#0x1
016e72c4  mov x0,x19
016e72c8  bl 0x0124cfc0
016e72cc  mov x0,x19
016e72d0  mov w1,w20
016e72d4  bl 0x0124e060
016e72d8  orr w1,wzr,#0xfffffffd
016e72dc  mov x0,x19
016e72e0  bl 0x0124c4d0
016e72e4  ldr w8,[sp, #0x18]
016e72e8  ldr x0,[sp, #0x10]
016e72ec  sub w8,w8,#0x3
016e72f0  str w8,[sp, #0x18]
016e72f4  orr w1,wzr,#0xfffffffc
016e72f8  bl 0x0124c4d0
016e72fc  ldr w8,[sp, #0x18]
016e7300  ldr x0,[sp, #0x10]
016e7304  str wzr,[sp, #0x18]
016e7308  cmp w8,#0x1
016e730c  b.lt 0x016e7330
016e7310  mvn w1,w8
016e7314  bl 0x0124c4d0
016e7318  ldr w8,[sp, #0x18]
016e731c  cmp w8,#0x1
016e7320  b.lt 0x016e7330
016e7324  ldr x0,[sp, #0x10]
016e7328  mvn w1,w8
016e732c  bl 0x0124c4d0
016e7330  ldr w8,[sp, #0x8]
016e7334  cmp w8,#0x1
016e7338  b.lt 0x016e7348
016e733c  ldr x0,[sp]
016e7340  mvn w1,w8
016e7344  bl 0x0124c4d0
016e7348  ldp x29,x30,[sp, #0x30]
016e734c  ldp x20,x19,[sp, #0x20]
016e7350  add sp,sp,#0x40
016e7354  ret
