// ===== case253-BattleSpecialEventResObject @ 016b720c =====
// existing function case253-BattleSpecialEventResObject
016b720c  sub sp,sp,#0x50
016b7210  str x21,[sp, #0x20]
016b7214  stp x20,x19,[sp, #0x30]
016b7218  stp x29,x30,[sp, #0x40]
016b721c  add x29,sp,#0x40
016b7220  adrp x1,0x174a000
016b7224  add x1,x1,#0x87c
016b7228  mov x19,x0
016b722c  bl 0x0124ba40
016b7230  adrp x1,0x575d000
016b7234  add x1,x1,#0xa06
016b7238  mov x0,x19
016b723c  str x19,[sp]
016b7240  bl 0x01251aa0
016b7244  mov w8,#0x1
016b7248  str w8,[sp, #0x8]
016b724c  mov x0,sp
016b7250  bl 0x0174aa04
016b7254  adrp x1,0x5761000
016b7258  adrp x3,0x736d000
016b725c  add x1,x1,#0x4be
016b7260  add x3,x3,#0x101
016b7264  add x0,sp,#0x10
016b7268  mov x2,sp
016b726c  bl 0x017d8d94
016b7270  ldr x0,[sp, #0x10]
016b7274  mov w1,#0x10
016b7278  bl 0x0124cba0
016b727c  adrp x8,0x17d8000
016b7280  dup v0.2D,xzr
016b7284  add x8,x8,#0x994
016b7288  mov v0.D[0x0],x8
016b728c  str q0,[x0]
016b7290  ldr x0,[sp, #0x10]
016b7294  adrp x1,0x17d9000
016b7298  add x1,x1,#0x158
016b729c  mov w2,#0x1
016b72a0  bl 0x0124ec90
016b72a4  ldr x0,[sp, #0x10]
016b72a8  mov w1,#0xffffffff
016b72ac  bl 0x0124c0c0
016b72b0  ldr x19,[sp, #0x10]
016b72b4  orr w1,wzr,#0xfffffffb
016b72b8  mov w2,#0x6e7
016b72bc  mov x0,x19
016b72c0  bl 0x0124a650
016b72c4  orr w1,wzr,#0xfffffffe
016b72c8  mov x0,x19
016b72cc  bl 0x0124c0c0
016b72d0  orr w1,wzr,#0xfffffffe
016b72d4  mov x0,x19
016b72d8  bl 0x0124e920
016b72dc  mov w20,w0
016b72e0  adrp x1,0x5760000
016b72e4  add x1,x1,#0x2b5
016b72e8  mov x0,x19
016b72ec  bl 0x0124f120
016b72f0  orr w1,wzr,#0xfffffffe
016b72f4  mov w2,#0x1
016b72f8  mov x0,x19
016b72fc  bl 0x0124cfc0
016b7300  mov x0,x19
016b7304  mov w1,w20
016b7308  bl 0x0124e060
016b730c  orr w1,wzr,#0xfffffffd
016b7310  mov x0,x19
016b7314  bl 0x0124c4d0
016b7318  ldr x19,[sp, #0x10]
016b731c  orr w1,wzr,#0xfffffffd
016b7320  mov w2,#0x6e7
016b7324  mov x0,x19
016b7328  bl 0x0124a650
016b732c  orr w1,wzr,#0xfffffffe
016b7330  mov x0,x19
016b7334  bl 0x0124c0c0
016b7338  orr w1,wzr,#0xfffffffe
016b733c  mov x0,x19
016b7340  bl 0x0124e920
016b7344  mov w20,w0
016b7348  adrp x1,0x5760000
016b734c  add x1,x1,#0x2b5
016b7350  mov x0,x19
016b7354  bl 0x0124f120
016b7358  orr w1,wzr,#0xfffffffe
016b735c  mov w2,#0x1
016b7360  mov x0,x19
016b7364  bl 0x0124cfc0
016b7368  mov x0,x19
016b736c  mov w1,w20
016b7370  bl 0x0124e060
016b7374  orr w1,wzr,#0xfffffffd
016b7378  mov x0,x19
016b737c  bl 0x0124c4d0
016b7380  adrp x1,0x5760000
016b7384  adrp x2,0x17d8000
016b7388  adrp x4,0x17d8000
016b738c  add x1,x1,#0x777
016b7390  add x2,x2,#0xb84
016b7394  add x4,x4,#0xb8c
016b7398  add x0,sp,#0x10
016b739c  mov x3,xzr
016b73a0  mov x5,xzr
016b73a4  bl 0x017d899c
016b73a8  adrp x1,0x5761000
016b73ac  adrp x2,0x17d8000
016b73b0  add x1,x1,#0x494
016b73b4  add x2,x2,#0xd7c
016b73b8  mov x3,xzr
016b73bc  mov x4,xzr
016b73c0  mov x5,xzr
016b73c4  bl 0x017d8b94
016b73c8  adrp x1,0x5761000
016b73cc  adrp x2,0x17d8000
016b73d0  add x1,x1,#0x49e
016b73d4  add x2,x2,#0xd84
016b73d8  mov x3,xzr
016b73dc  mov x4,xzr
016b73e0  mov x5,xzr
016b73e4  bl 0x017d8b94
016b73e8  mov x19,x0
016b73ec  ldr x0,[x19]
016b73f0  mov w1,#0x10
016b73f4  bl 0x0124cba0
016b73f8  adrp x8,0x17d8000
016b73fc  dup v0.2D,xzr
016b7400  add x8,x8,#0xd8c
016b7404  mov v0.D[0x0],x8
016b7408  str q0,[x0]
016b740c  ldr x0,[x19]
016b7410  adrp x1,0x17d9000
016b7414  add x1,x1,#0x710
016b7418  mov w2,#0x1
016b741c  bl 0x0124ec90
016b7420  ldr x0,[x19]
016b7424  mov w1,#0xffffffff
016b7428  bl 0x0124c0c0
016b742c  ldr x20,[x19]
016b7430  orr w1,wzr,#0xfffffffb
016b7434  mov w2,#0x6e7
016b7438  mov x0,x20
016b743c  bl 0x0124a650
016b7440  orr w1,wzr,#0xfffffffe
016b7444  mov x0,x20
016b7448  bl 0x0124c0c0
016b744c  orr w1,wzr,#0xfffffffe
016b7450  mov x0,x20
016b7454  bl 0x0124e920
016b7458  mov w21,w0
016b745c  adrp x1,0x5761000
016b7460  add x1,x1,#0x4da
016b7464  mov x0,x20
016b7468  bl 0x0124f120
016b746c  orr w1,wzr,#0xfffffffe
016b7470  mov w2,#0x1
016b7474  mov x0,x20
016b7478  bl 0x0124cfc0
016b747c  mov x0,x20
016b7480  mov w1,w21
016b7484  bl 0x0124e060
016b7488  orr w1,wzr,#0xfffffffd
016b748c  mov x0,x20
016b7490  bl 0x0124c4d0
016b7494  ldr x20,[x19]
016b7498  orr w1,wzr,#0xfffffffd
016b749c  mov w2,#0x6e7
016b74a0  mov x0,x20
016b74a4  bl 0x0124a650
016b74a8  orr w1,wzr,#0xfffffffe
016b74ac  mov x0,x20
016b74b0  bl 0x0124c0c0
016b74b4  orr w1,wzr,#0xfffffffe
016b74b8  mov x0,x20
016b74bc  bl 0x0124e920
016b74c0  mov w21,w0
016b74c4  adrp x1,0x5761000
016b74c8  add x1,x1,#0x4da
016b74cc  mov x0,x20
016b74d0  bl 0x0124f120
016b74d4  orr w1,wzr,#0xfffffffe
016b74d8  mov w2,#0x1
016b74dc  mov x0,x20
016b74e0  bl 0x0124cfc0
016b74e4  mov x0,x20
016b74e8  mov w1,w21
016b74ec  bl 0x0124e060
016b74f0  orr w1,wzr,#0xfffffffd
016b74f4  mov x0,x20
016b74f8  bl 0x0124c4d0
016b74fc  ldr w8,[x19, #0x8]
016b7500  ldr x0,[x19]
016b7504  sub w8,w8,#0x3
016b7508  str w8,[x19, #0x8]
016b750c  orr w1,wzr,#0xfffffffc
016b7510  bl 0x0124c4d0
016b7514  ldr w8,[x19, #0x8]
016b7518  ldr x0,[x19]
016b751c  str wzr,[x19, #0x8]
016b7520  cmp w8,#0x1
016b7524  b.lt 0x016b7530
016b7528  mvn w1,w8
016b752c  bl 0x0124c4d0
016b7530  ldr w8,[sp, #0x18]
016b7534  cmp w8,#0x1
016b7538  b.lt 0x016b7548
016b753c  ldr x0,[sp, #0x10]
016b7540  mvn w1,w8
016b7544  bl 0x0124c4d0
016b7548  ldr w8,[sp, #0x8]
016b754c  cmp w8,#0x1
016b7550  b.lt 0x016b7560
016b7554  ldr x0,[sp]
016b7558  mvn w1,w8
016b755c  bl 0x0124c4d0
016b7560  ldp x29,x30,[sp, #0x40]
016b7564  ldp x20,x19,[sp, #0x30]
016b7568  ldr x21,[sp, #0x20]
016b756c  add sp,sp,#0x50
016b7570  ret
