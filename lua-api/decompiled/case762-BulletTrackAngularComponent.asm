// ===== case762-BulletTrackAngularComponent @ 0172c6b8 =====
// existing function case762-BulletTrackAngularComponent
0172c6b8  sub sp,sp,#0x40
0172c6bc  stp x20,x19,[sp, #0x20]
0172c6c0  stp x29,x30,[sp, #0x30]
0172c6c4  add x29,sp,#0x30
0172c6c8  adrp x1,0x174a000
0172c6cc  add x1,x1,#0x87c
0172c6d0  mov x19,x0
0172c6d4  bl 0x0124ba40
0172c6d8  adrp x1,0x575d000
0172c6dc  add x1,x1,#0xa06
0172c6e0  mov x0,x19
0172c6e4  str x19,[sp]
0172c6e8  bl 0x01251aa0
0172c6ec  mov w8,#0x1
0172c6f0  str w8,[sp, #0x8]
0172c6f4  mov x0,sp
0172c6f8  bl 0x0174aa04
0172c6fc  adrp x1,0x5770000
0172c700  adrp x3,0x736d000
0172c704  add x1,x1,#0xe11
0172c708  add x3,x3,#0x101
0172c70c  add x0,sp,#0x10
0172c710  mov x2,sp
0172c714  bl 0x0199223c
0172c718  ldr x0,[sp, #0x10]
0172c71c  mov w1,#0x10
0172c720  bl 0x0124cba0
0172c724  adrp x8,0x1991000
0172c728  dup v0.2D,xzr
0172c72c  add x8,x8,#0xa24
0172c730  mov v0.D[0x0],x8
0172c734  str q0,[x0]
0172c738  ldr x0,[sp, #0x10]
0172c73c  adrp x1,0x1992000
0172c740  add x1,x1,#0x600
0172c744  mov w2,#0x1
0172c748  bl 0x0124ec90
0172c74c  ldr x0,[sp, #0x10]
0172c750  mov w1,#0xffffffff
0172c754  bl 0x0124c0c0
0172c758  ldr x19,[sp, #0x10]
0172c75c  orr w1,wzr,#0xfffffffb
0172c760  mov w2,#0x6e7
0172c764  mov x0,x19
0172c768  bl 0x0124a650
0172c76c  orr w1,wzr,#0xfffffffe
0172c770  mov x0,x19
0172c774  bl 0x0124c0c0
0172c778  orr w1,wzr,#0xfffffffe
0172c77c  mov x0,x19
0172c780  bl 0x0124e920
0172c784  mov w20,w0
0172c788  adrp x1,0x575a000
0172c78c  add x1,x1,#0xf84
0172c790  mov x0,x19
0172c794  bl 0x0124f120
0172c798  orr w1,wzr,#0xfffffffe
0172c79c  mov w2,#0x1
0172c7a0  mov x0,x19
0172c7a4  bl 0x0124cfc0
0172c7a8  mov x0,x19
0172c7ac  mov w1,w20
0172c7b0  bl 0x0124e060
0172c7b4  orr w1,wzr,#0xfffffffd
0172c7b8  mov x0,x19
0172c7bc  bl 0x0124c4d0
0172c7c0  ldr x19,[sp, #0x10]
0172c7c4  orr w1,wzr,#0xfffffffd
0172c7c8  mov w2,#0x6e7
0172c7cc  mov x0,x19
0172c7d0  bl 0x0124a650
0172c7d4  orr w1,wzr,#0xfffffffe
0172c7d8  mov x0,x19
0172c7dc  bl 0x0124c0c0
0172c7e0  orr w1,wzr,#0xfffffffe
0172c7e4  mov x0,x19
0172c7e8  bl 0x0124e920
0172c7ec  mov w20,w0
0172c7f0  adrp x1,0x575a000
0172c7f4  add x1,x1,#0xf84
0172c7f8  mov x0,x19
0172c7fc  bl 0x0124f120
0172c800  orr w1,wzr,#0xfffffffe
0172c804  mov w2,#0x1
0172c808  mov x0,x19
0172c80c  bl 0x0124cfc0
0172c810  mov x0,x19
0172c814  mov w1,w20
0172c818  bl 0x0124e060
0172c81c  orr w1,wzr,#0xfffffffd
0172c820  mov x0,x19
0172c824  bl 0x0124c4d0
0172c828  ldr x0,[sp, #0x10]
0172c82c  mov w1,#0x10
0172c830  bl 0x0124cba0
0172c834  adrp x8,0x1991000
0172c838  dup v0.2D,xzr
0172c83c  add x8,x8,#0xa2c
0172c840  mov v0.D[0x0],x8
0172c844  str q0,[x0]
0172c848  ldr x0,[sp, #0x10]
0172c84c  adrp x1,0x1992000
0172c850  add x1,x1,#0x724
0172c854  mov w2,#0x1
0172c858  bl 0x0124ec90
0172c85c  ldr x0,[sp, #0x10]
0172c860  mov w1,#0xffffffff
0172c864  bl 0x0124c0c0
0172c868  ldr x19,[sp, #0x10]
0172c86c  orr w1,wzr,#0xfffffffb
0172c870  mov w2,#0x6e7
0172c874  mov x0,x19
0172c878  bl 0x0124a650
0172c87c  orr w1,wzr,#0xfffffffe
0172c880  mov x0,x19
0172c884  bl 0x0124c0c0
0172c888  orr w1,wzr,#0xfffffffe
0172c88c  mov x0,x19
0172c890  bl 0x0124e920
0172c894  mov w20,w0
0172c898  adrp x1,0x5770000
0172c89c  add x1,x1,#0xe2d
0172c8a0  mov x0,x19
0172c8a4  bl 0x0124f120
0172c8a8  orr w1,wzr,#0xfffffffe
0172c8ac  mov w2,#0x1
0172c8b0  mov x0,x19
0172c8b4  bl 0x0124cfc0
0172c8b8  mov x0,x19
0172c8bc  mov w1,w20
0172c8c0  bl 0x0124e060
0172c8c4  orr w1,wzr,#0xfffffffd
0172c8c8  mov x0,x19
0172c8cc  bl 0x0124c4d0
0172c8d0  ldr x19,[sp, #0x10]
0172c8d4  orr w1,wzr,#0xfffffffd
0172c8d8  mov w2,#0x6e7
0172c8dc  mov x0,x19
0172c8e0  bl 0x0124a650
0172c8e4  orr w1,wzr,#0xfffffffe
0172c8e8  mov x0,x19
0172c8ec  bl 0x0124c0c0
0172c8f0  orr w1,wzr,#0xfffffffe
0172c8f4  mov x0,x19
0172c8f8  bl 0x0124e920
0172c8fc  mov w20,w0
0172c900  adrp x1,0x5770000
0172c904  add x1,x1,#0xe2d
0172c908  mov x0,x19
0172c90c  bl 0x0124f120
0172c910  orr w1,wzr,#0xfffffffe
0172c914  mov w2,#0x1
0172c918  mov x0,x19
0172c91c  bl 0x0124cfc0
0172c920  mov x0,x19
0172c924  mov w1,w20
0172c928  bl 0x0124e060
0172c92c  orr w1,wzr,#0xfffffffd
0172c930  mov x0,x19
0172c934  bl 0x0124c4d0
0172c938  adrp x1,0x5770000
0172c93c  adrp x2,0x1991000
0172c940  adrp x4,0x1991000
0172c944  add x1,x1,#0xe38
0172c948  add x2,x2,#0xc1c
0172c94c  add x4,x4,#0xc24
0172c950  add x0,sp,#0x10
0172c954  mov x3,xzr
0172c958  mov x5,xzr
0172c95c  bl 0x01991a34
0172c960  adrp x1,0x5770000
0172c964  adrp x2,0x1991000
0172c968  adrp x4,0x1991000
0172c96c  add x1,x1,#0xe45
0172c970  add x2,x2,#0xc84
0172c974  add x4,x4,#0xc8c
0172c978  mov x3,xzr
0172c97c  mov x5,xzr
0172c980  bl 0x01991a34
0172c984  adrp x1,0x5770000
0172c988  adrp x2,0x1991000
0172c98c  adrp x4,0x1991000
0172c990  add x1,x1,#0xe55
0172c994  add x2,x2,#0xcec
0172c998  add x4,x4,#0xcf4
0172c99c  mov x3,xzr
0172c9a0  mov x5,xzr
0172c9a4  bl 0x01991a34
0172c9a8  adrp x1,0x5770000
0172c9ac  adrp x2,0x1991000
0172c9b0  adrp x4,0x1991000
0172c9b4  add x1,x1,#0xe64
0172c9b8  add x2,x2,#0xd54
0172c9bc  add x4,x4,#0xd5c
0172c9c0  mov x3,xzr
0172c9c4  mov x5,xzr
0172c9c8  bl 0x01991a34
0172c9cc  adrp x1,0x5770000
0172c9d0  adrp x2,0x1991000
0172c9d4  adrp x4,0x1991000
0172c9d8  add x1,x1,#0xe76
0172c9dc  add x2,x2,#0xdbc
0172c9e0  add x4,x4,#0xdc4
0172c9e4  mov x3,xzr
0172c9e8  mov x5,xzr
0172c9ec  bl 0x01991a34
0172c9f0  adrp x1,0x5770000
0172c9f4  adrp x2,0x1992000
0172c9f8  adrp x4,0x1992000
0172c9fc  add x1,x1,#0xe85
0172ca00  add x2,x2,#0xc
0172ca04  add x4,x4,#0x14
0172ca08  mov x3,xzr
0172ca0c  mov x5,xzr
0172ca10  bl 0x01991e24
0172ca14  adrp x1,0x5770000
0172ca18  adrp x2,0x1992000
0172ca1c  adrp x4,0x1992000
0172ca20  add x1,x1,#0xe9a
0172ca24  add x2,x2,#0x218
0172ca28  add x4,x4,#0x220
0172ca2c  mov x3,xzr
0172ca30  mov x5,xzr
0172ca34  bl 0x01992030
0172ca38  mov x19,x0
0172ca3c  ldr w8,[x19, #0x8]
0172ca40  ldr x0,[x19]
0172ca44  sub w8,w8,#0x3
0172ca48  str w8,[x19, #0x8]
0172ca4c  orr w1,wzr,#0xfffffffc
0172ca50  bl 0x0124c4d0
0172ca54  ldr w8,[x19, #0x8]
0172ca58  ldr x0,[x19]
0172ca5c  str wzr,[x19, #0x8]
0172ca60  cmp w8,#0x1
0172ca64  b.lt 0x0172ca70
0172ca68  mvn w1,w8
0172ca6c  bl 0x0124c4d0
0172ca70  ldr w8,[sp, #0x18]
0172ca74  cmp w8,#0x1
0172ca78  b.lt 0x0172ca88
0172ca7c  ldr x0,[sp, #0x10]
0172ca80  mvn w1,w8
0172ca84  bl 0x0124c4d0
0172ca88  ldr w8,[sp, #0x8]
0172ca8c  cmp w8,#0x1
0172ca90  b.lt 0x0172caa0
0172ca94  ldr x0,[sp]
0172ca98  mvn w1,w8
0172ca9c  bl 0x0124c4d0
0172caa0  ldp x29,x30,[sp, #0x30]
0172caa4  ldp x20,x19,[sp, #0x20]
0172caa8  add sp,sp,#0x40
0172caac  ret
