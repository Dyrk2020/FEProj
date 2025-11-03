// ===== case252-BattleNegativeEventResObject @ 016b6f00 =====
// existing function case252-BattleNegativeEventResObject
016b6f00  sub sp,sp,#0x50
016b6f04  str x21,[sp, #0x20]
016b6f08  stp x20,x19,[sp, #0x30]
016b6f0c  stp x29,x30,[sp, #0x40]
016b6f10  add x29,sp,#0x40
016b6f14  adrp x1,0x174a000
016b6f18  add x1,x1,#0x87c
016b6f1c  mov x19,x0
016b6f20  bl 0x0124ba40
016b6f24  adrp x1,0x575d000
016b6f28  add x1,x1,#0xa06
016b6f2c  mov x0,x19
016b6f30  str x19,[sp]
016b6f34  bl 0x01251aa0
016b6f38  mov w8,#0x1
016b6f3c  str w8,[sp, #0x8]
016b6f40  mov x0,sp
016b6f44  bl 0x0174aa04
016b6f48  adrp x1,0x5761000
016b6f4c  adrp x3,0x736d000
016b6f50  add x1,x1,#0x477
016b6f54  add x3,x3,#0x101
016b6f58  add x0,sp,#0x10
016b6f5c  mov x2,sp
016b6f60  bl 0x017d7df8
016b6f64  adrp x1,0x57f9000
016b6f68  adrp x2,0x17d7000
016b6f6c  adrp x4,0x17d7000
016b6f70  add x1,x1,#0xcf2
016b6f74  add x2,x2,#0x9e0
016b6f78  add x4,x4,#0x9e8
016b6f7c  add x0,sp,#0x10
016b6f80  mov x3,xzr
016b6f84  mov x5,xzr
016b6f88  bl 0x017d77f8
016b6f8c  mov x19,x0
016b6f90  ldr x0,[x19]
016b6f94  mov w1,#0x10
016b6f98  bl 0x0124cba0
016b6f9c  adrp x8,0x17d7000
016b6fa0  dup v0.2D,xzr
016b6fa4  add x8,x8,#0x9f0
016b6fa8  mov v0.D[0x0],x8
016b6fac  str q0,[x0]
016b6fb0  ldr x0,[x19]
016b6fb4  adrp x1,0x17d8000
016b6fb8  add x1,x1,#0x3dc
016b6fbc  mov w2,#0x1
016b6fc0  bl 0x0124ec90
016b6fc4  ldr x0,[x19]
016b6fc8  mov w1,#0xffffffff
016b6fcc  bl 0x0124c0c0
016b6fd0  ldr x20,[x19]
016b6fd4  orr w1,wzr,#0xfffffffb
016b6fd8  mov w2,#0x6e7
016b6fdc  mov x0,x20
016b6fe0  bl 0x0124a650
016b6fe4  orr w1,wzr,#0xfffffffe
016b6fe8  mov x0,x20
016b6fec  bl 0x0124c0c0
016b6ff0  orr w1,wzr,#0xfffffffe
016b6ff4  mov x0,x20
016b6ff8  bl 0x0124e920
016b6ffc  mov w21,w0
016b7000  adrp x1,0x5760000
016b7004  add x1,x1,#0x2b5
016b7008  mov x0,x20
016b700c  bl 0x0124f120
016b7010  orr w1,wzr,#0xfffffffe
016b7014  mov w2,#0x1
016b7018  mov x0,x20
016b701c  bl 0x0124cfc0
016b7020  mov x0,x20
016b7024  mov w1,w21
016b7028  bl 0x0124e060
016b702c  orr w1,wzr,#0xfffffffd
016b7030  mov x0,x20
016b7034  bl 0x0124c4d0
016b7038  ldr x20,[x19]
016b703c  orr w1,wzr,#0xfffffffd
016b7040  mov w2,#0x6e7
016b7044  mov x0,x20
016b7048  bl 0x0124a650
016b704c  orr w1,wzr,#0xfffffffe
016b7050  mov x0,x20
016b7054  bl 0x0124c0c0
016b7058  orr w1,wzr,#0xfffffffe
016b705c  mov x0,x20
016b7060  bl 0x0124e920
016b7064  mov w21,w0
016b7068  adrp x1,0x5760000
016b706c  add x1,x1,#0x2b5
016b7070  mov x0,x20
016b7074  bl 0x0124f120
016b7078  orr w1,wzr,#0xfffffffe
016b707c  mov w2,#0x1
016b7080  mov x0,x20
016b7084  bl 0x0124cfc0
016b7088  mov x0,x20
016b708c  mov w1,w21
016b7090  bl 0x0124e060
016b7094  orr w1,wzr,#0xfffffffd
016b7098  mov x0,x20
016b709c  bl 0x0124c4d0
016b70a0  adrp x1,0x5760000
016b70a4  adrp x2,0x17d7000
016b70a8  adrp x4,0x17d7000
016b70ac  add x1,x1,#0x777
016b70b0  add x2,x2,#0xbe0
016b70b4  add x4,x4,#0xbe8
016b70b8  mov x0,x19
016b70bc  mov x3,xzr
016b70c0  mov x5,xzr
016b70c4  bl 0x017d79f8
016b70c8  adrp x1,0x5761000
016b70cc  adrp x2,0x17d7000
016b70d0  add x1,x1,#0x494
016b70d4  add x2,x2,#0xdd8
016b70d8  mov x3,xzr
016b70dc  mov x4,xzr
016b70e0  mov x5,xzr
016b70e4  bl 0x017d7bf0
016b70e8  adrp x1,0x5761000
016b70ec  adrp x2,0x17d7000
016b70f0  add x1,x1,#0x49e
016b70f4  add x2,x2,#0xde0
016b70f8  mov x3,xzr
016b70fc  mov x4,xzr
016b7100  mov x5,xzr
016b7104  bl 0x017d7bf0
016b7108  adrp x1,0x5761000
016b710c  adrp x2,0x17d7000
016b7110  adrp x4,0x17d7000
016b7114  add x1,x1,#0x4b0
016b7118  add x2,x2,#0xde8
016b711c  add x4,x4,#0xdf0
016b7120  mov x3,xzr
016b7124  mov x5,xzr
016b7128  bl 0x017d77f8
016b712c  mov x19,x0
016b7130  ldr w8,[x19, #0x8]
016b7134  ldr x0,[x19]
016b7138  sub w8,w8,#0x3
016b713c  str w8,[x19, #0x8]
016b7140  orr w1,wzr,#0xfffffffc
016b7144  bl 0x0124c4d0
016b7148  ldr w8,[x19, #0x8]
016b714c  ldr x0,[x19]
016b7150  str wzr,[x19, #0x8]
016b7154  cmp w8,#0x1
016b7158  b.lt 0x016b7164
016b715c  mvn w1,w8
016b7160  bl 0x0124c4d0
016b7164  ldr w8,[sp, #0x18]
016b7168  cmp w8,#0x1
016b716c  b.lt 0x016b717c
016b7170  ldr x0,[sp, #0x10]
016b7174  mvn w1,w8
016b7178  bl 0x0124c4d0
016b717c  ldr w8,[sp, #0x8]
016b7180  cmp w8,#0x1
016b7184  b.lt 0x016b7194
016b7188  ldr x0,[sp]
016b718c  mvn w1,w8
016b7190  bl 0x0124c4d0
016b7194  ldp x29,x30,[sp, #0x40]
016b7198  ldp x20,x19,[sp, #0x30]
016b719c  ldr x21,[sp, #0x20]
016b71a0  add sp,sp,#0x50
016b71a4  ret
