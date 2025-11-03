// ===== case582-SceneResGrass @ 01703938 =====
// existing function case582-SceneResGrass
01703938  sub sp,sp,#0x40
0170393c  stp x20,x19,[sp, #0x20]
01703940  stp x29,x30,[sp, #0x30]
01703944  add x29,sp,#0x30
01703948  adrp x1,0x174a000
0170394c  add x1,x1,#0x87c
01703950  mov x19,x0
01703954  bl 0x0124ba40
01703958  adrp x1,0x575d000
0170395c  add x1,x1,#0xa06
01703960  mov x0,x19
01703964  str x19,[sp]
01703968  bl 0x01251aa0
0170396c  mov w8,#0x1
01703970  str w8,[sp, #0x8]
01703974  mov x0,sp
01703978  bl 0x0174aa04
0170397c  adrp x1,0x576a000
01703980  adrp x3,0x736d000
01703984  add x1,x1,#0x5
01703988  add x3,x3,#0x101
0170398c  add x0,sp,#0x10
01703990  mov x2,sp
01703994  bl 0x018e7558
01703998  ldr x0,[sp, #0x10]
0170399c  mov w1,#0x10
017039a0  bl 0x0124cba0
017039a4  adrp x8,0x18e7000
017039a8  dup v0.2D,xzr
017039ac  add x8,x8,#0x358
017039b0  mov v0.D[0x0],x8
017039b4  str q0,[x0]
017039b8  ldr x0,[sp, #0x10]
017039bc  adrp x1,0x18e7000
017039c0  add x1,x1,#0x91c
017039c4  mov w2,#0x1
017039c8  bl 0x0124ec90
017039cc  ldr x0,[sp, #0x10]
017039d0  mov w1,#0xffffffff
017039d4  bl 0x0124c0c0
017039d8  ldr x19,[sp, #0x10]
017039dc  orr w1,wzr,#0xfffffffb
017039e0  mov w2,#0x6e7
017039e4  mov x0,x19
017039e8  bl 0x0124a650
017039ec  orr w1,wzr,#0xfffffffe
017039f0  mov x0,x19
017039f4  bl 0x0124c0c0
017039f8  orr w1,wzr,#0xfffffffe
017039fc  mov x0,x19
01703a00  bl 0x0124e920
01703a04  mov w20,w0
01703a08  adrp x1,0x5769000
01703a0c  add x1,x1,#0xffd
01703a10  mov x0,x19
01703a14  bl 0x0124f120
01703a18  orr w1,wzr,#0xfffffffe
01703a1c  mov w2,#0x1
01703a20  mov x0,x19
01703a24  bl 0x0124cfc0
01703a28  mov x0,x19
01703a2c  mov w1,w20
01703a30  bl 0x0124e060
01703a34  orr w1,wzr,#0xfffffffd
01703a38  mov x0,x19
01703a3c  bl 0x0124c4d0
01703a40  ldr x19,[sp, #0x10]
01703a44  orr w1,wzr,#0xfffffffd
01703a48  mov w2,#0x6e7
01703a4c  mov x0,x19
01703a50  bl 0x0124a650
01703a54  orr w1,wzr,#0xfffffffe
01703a58  mov x0,x19
01703a5c  bl 0x0124c0c0
01703a60  orr w1,wzr,#0xfffffffe
01703a64  mov x0,x19
01703a68  bl 0x0124e920
01703a6c  mov w20,w0
01703a70  adrp x1,0x5769000
01703a74  add x1,x1,#0xffd
01703a78  mov x0,x19
01703a7c  bl 0x0124f120
01703a80  orr w1,wzr,#0xfffffffe
01703a84  mov w2,#0x1
01703a88  mov x0,x19
01703a8c  bl 0x0124cfc0
01703a90  mov x0,x19
01703a94  mov w1,w20
01703a98  bl 0x0124e060
01703a9c  orr w1,wzr,#0xfffffffd
01703aa0  mov x0,x19
01703aa4  bl 0x0124c4d0
01703aa8  adrp x1,0x5766000
01703aac  adrp x2,0x18e7000
01703ab0  adrp x4,0x18e7000
01703ab4  add x1,x1,#0xa90
01703ab8  add x2,x2,#0x548
01703abc  add x4,x4,#0x550
01703ac0  add x0,sp,#0x10
01703ac4  mov x3,xzr
01703ac8  mov x5,xzr
01703acc  bl 0x018e7360
01703ad0  mov x19,x0
01703ad4  ldr w8,[x19, #0x8]
01703ad8  ldr x0,[x19]
01703adc  sub w8,w8,#0x3
01703ae0  str w8,[x19, #0x8]
01703ae4  orr w1,wzr,#0xfffffffc
01703ae8  bl 0x0124c4d0
01703aec  ldr w8,[x19, #0x8]
01703af0  ldr x0,[x19]
01703af4  str wzr,[x19, #0x8]
01703af8  cmp w8,#0x1
01703afc  b.lt 0x01703b08
01703b00  mvn w1,w8
01703b04  bl 0x0124c4d0
01703b08  ldr w8,[sp, #0x18]
01703b0c  cmp w8,#0x1
01703b10  b.lt 0x01703b20
01703b14  ldr x0,[sp, #0x10]
01703b18  mvn w1,w8
01703b1c  bl 0x0124c4d0
01703b20  ldr w8,[sp, #0x8]
01703b24  cmp w8,#0x1
01703b28  b.lt 0x01703b38
01703b2c  ldr x0,[sp]
01703b30  mvn w1,w8
01703b34  bl 0x0124c4d0
01703b38  ldp x29,x30,[sp, #0x30]
01703b3c  ldp x20,x19,[sp, #0x20]
01703b40  add sp,sp,#0x40
01703b44  ret
